/*
 * Copyright 2012 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 1.1
import Ubuntu.Components 0.1
//import Ubuntu.Components.i18n 0.1

Template {
    title: "Buttons"

    Column {
        spacing: 30

        TemplateRow {
            title: i18n.translate("Standard")

            Button {
                text: "Call"
            }
        }

        TemplateRow {
            title: "Disabled"

            Button {
                text: "Call"
                enabled: false
            }
        }

        TemplateRow {
            title: "Colors"

            Button {
                text: "Call"
                color: "#37b301"
            }

            Button {
                text: "Call"
                pressedColor: "#dd4f22"
            }

            Rectangle {
                id: darkBackground
                width: darkButton.width + 20
                height: darkButton.height + 20
                color: "#3a3c41"

                Button {
                    id: darkButton
                    text: "Call"
                    color: "#dd4f22"
                    darkBorder: true
                    anchors.centerIn: parent
                }
            }
        }

        TemplateRow {
            title: "Content"

            Button {
                text: "Call"
            }

            Button {
                iconSource: "call_icon.png"
            }

            Button {
                text: "Call"
                iconSource: "call_icon.png"
            }

            Button {
                text: "Call"
                iconSource: "call_icon.png"
                iconPosition: "right"
            }
        }

        TemplateRow {
            title: "Scalability"

            Button {
                text: "Call"
            }

            Button {
                text: "Call"
                width: 140
                height: 90
            }
        }
    }
}
