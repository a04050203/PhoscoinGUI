/********************************************************************************
** Form generated from reading UI file 'messageaddressframe.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MESSAGEADDRESSFRAME_H
#define UI_MESSAGEADDRESSFRAME_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QFrame>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QToolButton>

QT_BEGIN_NAMESPACE

class Ui_MessageAddressFrame
{
public:
    QHBoxLayout *horizontalLayout;
    QLabel *label;
    QLineEdit *m_addressEdit;
    QToolButton *m_addressBookButton;
    QToolButton *m_pasteButton;
    QToolButton *m_removeButton;

    void setupUi(QFrame *MessageAddressFrame)
    {
        if (MessageAddressFrame->objectName().isEmpty())
            MessageAddressFrame->setObjectName(QStringLiteral("MessageAddressFrame"));
        MessageAddressFrame->resize(737, 36);
        MessageAddressFrame->setFrameShape(QFrame::NoFrame);
        MessageAddressFrame->setFrameShadow(QFrame::Raised);
        horizontalLayout = new QHBoxLayout(MessageAddressFrame);
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        horizontalLayout->setContentsMargins(5, 5, 5, 5);
        label = new QLabel(MessageAddressFrame);
        label->setObjectName(QStringLiteral("label"));

        horizontalLayout->addWidget(label);

        m_addressEdit = new QLineEdit(MessageAddressFrame);
        m_addressEdit->setObjectName(QStringLiteral("m_addressEdit"));

        horizontalLayout->addWidget(m_addressEdit);

        m_addressBookButton = new QToolButton(MessageAddressFrame);
        m_addressBookButton->setObjectName(QStringLiteral("m_addressBookButton"));
        QIcon icon;
        icon.addFile(QStringLiteral(":/icons/address-book"), QSize(), QIcon::Normal, QIcon::Off);
        m_addressBookButton->setIcon(icon);

        horizontalLayout->addWidget(m_addressBookButton);

        m_pasteButton = new QToolButton(MessageAddressFrame);
        m_pasteButton->setObjectName(QStringLiteral("m_pasteButton"));
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/icons/paste"), QSize(), QIcon::Normal, QIcon::Off);
        m_pasteButton->setIcon(icon1);

        horizontalLayout->addWidget(m_pasteButton);

        m_removeButton = new QToolButton(MessageAddressFrame);
        m_removeButton->setObjectName(QStringLiteral("m_removeButton"));
        QIcon icon2;
        icon2.addFile(QStringLiteral(":/icons/remove"), QSize(), QIcon::Normal, QIcon::Off);
        m_removeButton->setIcon(icon2);

        horizontalLayout->addWidget(m_removeButton);


        retranslateUi(MessageAddressFrame);
        QObject::connect(m_addressBookButton, SIGNAL(clicked()), MessageAddressFrame, SLOT(addressBookClicked()));
        QObject::connect(m_pasteButton, SIGNAL(clicked()), MessageAddressFrame, SLOT(pasteClicked()));
        QObject::connect(m_removeButton, SIGNAL(clicked()), MessageAddressFrame, SLOT(deleteLater()));
        QObject::connect(m_addressEdit, SIGNAL(textEdited(QString)), MessageAddressFrame, SLOT(addressEdited(QString)));

        QMetaObject::connectSlotsByName(MessageAddressFrame);
    } // setupUi

    void retranslateUi(QFrame *MessageAddressFrame)
    {
        MessageAddressFrame->setWindowTitle(QApplication::translate("MessageAddressFrame", "Frame", 0));
        label->setText(QApplication::translate("MessageAddressFrame", "Send To:", 0));
        m_addressBookButton->setText(QApplication::translate("MessageAddressFrame", "...", 0));
        m_pasteButton->setText(QApplication::translate("MessageAddressFrame", "...", 0));
        m_removeButton->setText(QApplication::translate("MessageAddressFrame", "...", 0));
    } // retranslateUi

};

namespace Ui {
    class MessageAddressFrame: public Ui_MessageAddressFrame {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MESSAGEADDRESSFRAME_H
