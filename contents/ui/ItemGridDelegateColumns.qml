/*
    SPDX-FileCopyrightText: 2015 Eike Hein <hein@kde.org>

    SPDX-License-Identifier: GPL-2.0-or-later
*/

import QtQuick

import org.kde.plasma.components 3.0 as PlasmaComponents3
import org.kde.plasma.core as PlasmaCore
import org.kde.kirigami as Kirigami
import QtQuick.Layouts 1.1
import "code/tools.js" as Tools

Item {
    id: item

    width: GridView.view.cellWidth
    height: GridView.view.cellHeight

    enabled: !model.disabled

    property int iconSize
    property bool showLabel: true
    property int itemIndex: model.index
    property string favoriteId: model.favoriteId !== undefined ? model.favoriteId : ""
    property url url: model.url !== undefined ? model.url : ""
    property variant icon: model.decoration !== undefined ? model.decoration : ""
    property var m: model
    property bool hasActionList: ((model.favoriteId !== null)
                                  || (("hasActionList" in model) && (model.hasActionList === true)))

    property int itemColumns
    property bool handleTriggerManually: false
    Accessible.role: Accessible.MenuItem
    Accessible.name: model.display

    function openActionMenu(x, y) {
        var actionList = [];
        if (hasActionList && model.actionList !== undefined) {
            actionList = model.actionList;
        }
        Tools.fillActionMenu(i18n, actionMenu, actionList, GridView.view.model.favoritesModel, model.favoriteId);
        actionMenu.visualParent = item;
        actionMenu.open(x, y);
    }

    function actionTriggered(actionId, actionArgument) {
        var close = (Tools.triggerAction(GridView.view.model, model.index, actionId, actionArgument) === true);

        if (close) {
            root.toggle();
        }
    }

    property bool showDescriptions: true

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: Kirigami.Units.largeSpacing
        anchors.rightMargin: Kirigami.Units.largeSpacing
        spacing: Kirigami.Units.largeSpacing

        Kirigami.Icon {
            id: icon
            Layout.preferredWidth: iconSize
            Layout.preferredHeight: iconSize
            Layout.alignment: Qt.AlignVCenter
            source: model.decoration
            animated: false
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true

            // List View Layout (itemColumns == 1)
            RowLayout {
                anchors.fill: parent
                visible: itemColumns == 1
                spacing: Kirigami.Units.smallSpacing

                PlasmaComponents3.Label {
                    id: labelList
                    text: ("name" in model ? model.name : model.display)
                    // Name takes 65% of space ideally
                    Layout.fillWidth: true
                    Layout.preferredWidth: parent.width * 0.65
                    elide: Text.ElideRight
                    maximumLineCount: 1
                    color: Kirigami.Theme.textColor
                    font.pointSize: Kirigami.Theme.defaultFont.pointSize
                    horizontalAlignment: Text.AlignLeft
                }

                PlasmaComponents3.Label {
                    id: descList
                    text: ("description" in model ? model.description : "")
                    visible: item.showDescriptions && text.length > 0 && text !== model.display
                    // Description takes 35% of space ideally
                    Layout.fillWidth: true
                    Layout.preferredWidth: parent.width * 0.35
                    Layout.minimumWidth: 0
                    elide: Text.ElideRight
                    maximumLineCount: 1
                    color: colorWithAlpha(Kirigami.Theme.textColor, 0.6)
                    font.pointSize: Kirigami.Theme.defaultFont.pointSize - 1
                    horizontalAlignment: Text.AlignRight
                }
            }

            // Grid View Layout (itemColumns == 2)
            ColumnLayout {
                anchors.fill: parent
                visible: itemColumns == 2
                spacing: 0

                PlasmaComponents3.Label {
                    id: labelGrid
                    text: ("name" in model ? model.name : model.display)
                    Layout.fillWidth: true
                    elide: Text.ElideRight
                    maximumLineCount: 1
                    color: Kirigami.Theme.textColor
                    font.pointSize: Kirigami.Theme.defaultFont.pointSize
                    horizontalAlignment: Text.AlignLeft
                }

                PlasmaComponents3.Label {
                    id: descGrid
                    text: ("description" in model ? model.description : "")
                    visible: text.length > 0 && text !== model.display
                    Layout.fillWidth: true
                    elide: Text.ElideRight
                    maximumLineCount: 1
                    color: colorWithAlpha(Kirigami.Theme.textColor, 0.6)
                    font.pointSize: Kirigami.Theme.defaultFont.pointSize - 1
                    horizontalAlignment: Text.AlignLeft
                }
            }
        }
    }

    property Item currentLabel: itemColumns == 1 ? labelList : labelGrid

    PlasmaCore.ToolTipArea {
        id: toolTip

        property string text: model.display

        anchors.fill: parent
        active: root.visible && currentLabel.truncated
        mainItem: toolTipDelegate

        onContainsMouseChanged: item.GridView.view.itemContainsMouseChanged(containsMouse)
    }

    Keys.onPressed: event => {
                        if (event.key === Qt.Key_Menu && hasActionList) {
                            event.accepted = true;
                            openActionMenu(item);
                        } else if ((event.key === Qt.Key_Enter || event.key === Qt.Key_Return)) {
                            event.accepted = true;

                            if (!handleTriggerManually && "trigger" in GridView.view.model) {
                                GridView.view.model.trigger(index, "", null);
                                root.toggle();
                            }

                            itemGrid.itemActivated(index, "", null);
                        }
                    }
}
