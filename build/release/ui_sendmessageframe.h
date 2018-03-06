/********************************************************************************
** Form generated from reading UI file 'sendmessageframe.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SENDMESSAGEFRAME_H
#define UI_SENDMESSAGEFRAME_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QDoubleSpinBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QScrollArea>
#include <QtWidgets/QSlider>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_SendMessageFrame
{
public:
    QVBoxLayout *verticalLayout;
    QScrollArea *m_messageAddressScrollArea;
    QWidget *scrollAreaWidgetContents;
    QVBoxLayout *m_addressesLayout;
    QSpacerItem *verticalSpacer_2;
    QLabel *label_3;
    QTextEdit *m_messageTextEdit;
    QSpacerItem *verticalSpacer;
    QHBoxLayout *horizontalLayout_3;
    QCheckBox *m_addReplyToCheck;
    QHBoxLayout *horizontalLayout_2;
    QCheckBox *m_ttlCheck;
    QSlider *m_ttlSlider;
    QLabel *m_ttlLabel;
    QSpacerItem *horizontalSpacer_3;
    QGridLayout *gridLayout;
    QSlider *m_mixinSlider;
    QLabel *label_2;
    QLineEdit *m_mixinEdit;
    QSpacerItem *horizontalSpacer;
    QLabel *label_4;
    QDoubleSpinBox *m_feeSpin;
    QHBoxLayout *horizontalLayout;
    QPushButton *m_sendButton;
    QPushButton *m_addRecipientButton;
    QSpacerItem *horizontalSpacer_2;
    QLabel *m_tickerLabel;

    void setupUi(QFrame *SendMessageFrame)
    {
        if (SendMessageFrame->objectName().isEmpty())
            SendMessageFrame->setObjectName(QStringLiteral("SendMessageFrame"));
        SendMessageFrame->resize(773, 575);
        SendMessageFrame->setFrameShape(QFrame::NoFrame);
        SendMessageFrame->setFrameShadow(QFrame::Raised);
        verticalLayout = new QVBoxLayout(SendMessageFrame);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        m_messageAddressScrollArea = new QScrollArea(SendMessageFrame);
        m_messageAddressScrollArea->setObjectName(QStringLiteral("m_messageAddressScrollArea"));
        m_messageAddressScrollArea->setFrameShape(QFrame::StyledPanel);
        m_messageAddressScrollArea->setWidgetResizable(true);
        scrollAreaWidgetContents = new QWidget();
        scrollAreaWidgetContents->setObjectName(QStringLiteral("scrollAreaWidgetContents"));
        scrollAreaWidgetContents->setGeometry(QRect(0, 0, 747, 126));
        m_addressesLayout = new QVBoxLayout(scrollAreaWidgetContents);
        m_addressesLayout->setSpacing(0);
        m_addressesLayout->setObjectName(QStringLiteral("m_addressesLayout"));
        m_addressesLayout->setContentsMargins(0, 0, 0, 0);
        verticalSpacer_2 = new QSpacerItem(20, 139, QSizePolicy::Minimum, QSizePolicy::Expanding);

        m_addressesLayout->addItem(verticalSpacer_2);

        m_messageAddressScrollArea->setWidget(scrollAreaWidgetContents);

        verticalLayout->addWidget(m_messageAddressScrollArea);

        label_3 = new QLabel(SendMessageFrame);
        label_3->setObjectName(QStringLiteral("label_3"));

        verticalLayout->addWidget(label_3);

        m_messageTextEdit = new QTextEdit(SendMessageFrame);
        m_messageTextEdit->setObjectName(QStringLiteral("m_messageTextEdit"));
        m_messageTextEdit->setHtml(QLatin1String("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:'.SF NS Text'; font-size:13pt; font-weight:400; font-style:normal;\">\n"
"<p style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-family:'.Helvetica Neue DeskInterface';\"><br /></p></body></html>"));

        verticalLayout->addWidget(m_messageTextEdit);

        verticalSpacer = new QSpacerItem(20, 10, QSizePolicy::Minimum, QSizePolicy::Fixed);

        verticalLayout->addItem(verticalSpacer);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        horizontalLayout_3->setContentsMargins(-1, 0, -1, -1);
        m_addReplyToCheck = new QCheckBox(SendMessageFrame);
        m_addReplyToCheck->setObjectName(QStringLiteral("m_addReplyToCheck"));

        horizontalLayout_3->addWidget(m_addReplyToCheck);


        verticalLayout->addLayout(horizontalLayout_3);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        horizontalLayout_2->setContentsMargins(-1, -1, 10, -1);
        m_ttlCheck = new QCheckBox(SendMessageFrame);
        m_ttlCheck->setObjectName(QStringLiteral("m_ttlCheck"));

        horizontalLayout_2->addWidget(m_ttlCheck);

        m_ttlSlider = new QSlider(SendMessageFrame);
        m_ttlSlider->setObjectName(QStringLiteral("m_ttlSlider"));
        m_ttlSlider->setSingleStep(300);
        m_ttlSlider->setOrientation(Qt::Horizontal);
        m_ttlSlider->setTickInterval(1);

        horizontalLayout_2->addWidget(m_ttlSlider);

        m_ttlLabel = new QLabel(SendMessageFrame);
        m_ttlLabel->setObjectName(QStringLiteral("m_ttlLabel"));

        horizontalLayout_2->addWidget(m_ttlLabel);

        horizontalSpacer_3 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout_2->addItem(horizontalSpacer_3);


        verticalLayout->addLayout(horizontalLayout_2);

        gridLayout = new QGridLayout();
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(-1, 5, -1, -1);
        m_mixinSlider = new QSlider(SendMessageFrame);
        m_mixinSlider->setObjectName(QStringLiteral("m_mixinSlider"));
        m_mixinSlider->setMaximumSize(QSize(200, 16777215));
        m_mixinSlider->setMaximum(10);
        m_mixinSlider->setPageStep(1);
        m_mixinSlider->setValue(1);
        m_mixinSlider->setTracking(false);
        m_mixinSlider->setOrientation(Qt::Horizontal);
        m_mixinSlider->setTickPosition(QSlider::TicksBothSides);
        m_mixinSlider->setTickInterval(1);

        gridLayout->addWidget(m_mixinSlider, 1, 1, 1, 1);

        label_2 = new QLabel(SendMessageFrame);
        label_2->setObjectName(QStringLiteral("label_2"));

        gridLayout->addWidget(label_2, 1, 0, 1, 1);

        m_mixinEdit = new QLineEdit(SendMessageFrame);
        m_mixinEdit->setObjectName(QStringLiteral("m_mixinEdit"));
        m_mixinEdit->setMaximumSize(QSize(30, 16777215));
        m_mixinEdit->setText(QStringLiteral(""));
        m_mixinEdit->setMaxLength(5);
        m_mixinEdit->setAlignment(Qt::AlignCenter);
        m_mixinEdit->setReadOnly(true);

        gridLayout->addWidget(m_mixinEdit, 1, 2, 1, 1);

        horizontalSpacer = new QSpacerItem(298, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        gridLayout->addItem(horizontalSpacer, 1, 3, 1, 1);

        label_4 = new QLabel(SendMessageFrame);
        label_4->setObjectName(QStringLiteral("label_4"));

        gridLayout->addWidget(label_4, 0, 0, 1, 1);

        m_feeSpin = new QDoubleSpinBox(SendMessageFrame);
        m_feeSpin->setObjectName(QStringLiteral("m_feeSpin"));
        m_feeSpin->setDecimals(8);
        m_feeSpin->setMinimum(0);
        m_feeSpin->setMaximum(1e+18);
        m_feeSpin->setSingleStep(0.01);
        m_feeSpin->setValue(0);

        gridLayout->addWidget(m_feeSpin, 0, 1, 1, 1);


        verticalLayout->addLayout(gridLayout);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        m_sendButton = new QPushButton(SendMessageFrame);
        m_sendButton->setObjectName(QStringLiteral("m_sendButton"));
        QIcon icon;
        icon.addFile(QStringLiteral(":/icons/send"), QSize(), QIcon::Normal, QIcon::Off);
        m_sendButton->setIcon(icon);

        horizontalLayout->addWidget(m_sendButton);

        m_addRecipientButton = new QPushButton(SendMessageFrame);
        m_addRecipientButton->setObjectName(QStringLiteral("m_addRecipientButton"));
        QIcon icon1;
        icon1.addFile(QStringLiteral(":/icons/add"), QSize(), QIcon::Normal, QIcon::Off);
        m_addRecipientButton->setIcon(icon1);

        horizontalLayout->addWidget(m_addRecipientButton);

        horizontalSpacer_2 = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer_2);

        m_tickerLabel = new QLabel(SendMessageFrame);
        m_tickerLabel->setObjectName(QStringLiteral("m_tickerLabel"));
        m_tickerLabel->setText(QStringLiteral(""));

        horizontalLayout->addWidget(m_tickerLabel);


        verticalLayout->addLayout(horizontalLayout);


        retranslateUi(SendMessageFrame);
        QObject::connect(m_sendButton, SIGNAL(clicked()), SendMessageFrame, SLOT(sendClicked()));
        QObject::connect(m_mixinSlider, SIGNAL(valueChanged(int)), SendMessageFrame, SLOT(mixinValueChanged(int)));
        QObject::connect(m_messageTextEdit, SIGNAL(textChanged()), SendMessageFrame, SLOT(messageTextChanged()));
        QObject::connect(m_addRecipientButton, SIGNAL(clicked()), SendMessageFrame, SLOT(addRecipientClicked()));
        QObject::connect(m_ttlSlider, SIGNAL(valueChanged(int)), SendMessageFrame, SLOT(ttlValueChanged(int)));
        QObject::connect(m_ttlCheck, SIGNAL(toggled(bool)), m_ttlSlider, SLOT(setVisible(bool)));
        QObject::connect(m_ttlCheck, SIGNAL(toggled(bool)), m_ttlLabel, SLOT(setVisible(bool)));
        QObject::connect(m_ttlCheck, SIGNAL(stateChanged(int)), SendMessageFrame, SLOT(ttlCheckStateChanged(int)));

        QMetaObject::connectSlotsByName(SendMessageFrame);
    } // setupUi

    void retranslateUi(QFrame *SendMessageFrame)
    {
        SendMessageFrame->setWindowTitle(QApplication::translate("SendMessageFrame", "Frame", 0));
        label_3->setText(QApplication::translate("SendMessageFrame", "Encrypted message:", 0));
        m_addReplyToCheck->setText(QApplication::translate("SendMessageFrame", "Add \"Reply To\"", 0));
#ifndef QT_NO_TOOLTIP
        m_ttlCheck->setToolTip(QApplication::translate("SendMessageFrame", "Do not include message in blockchain", 0));
#endif // QT_NO_TOOLTIP
        m_ttlCheck->setText(QApplication::translate("SendMessageFrame", "Set self destruct time", 0));
        m_ttlLabel->setText(QApplication::translate("SendMessageFrame", "TextLabel", 0));
        label_2->setText(QApplication::translate("SendMessageFrame", "Anonimity level:", 0));
        label_4->setText(QApplication::translate("SendMessageFrame", "Fee:", 0));
        m_sendButton->setText(QApplication::translate("SendMessageFrame", "Send", 0));
        m_addRecipientButton->setText(QApplication::translate("SendMessageFrame", "Add Recipient", 0));
    } // retranslateUi

};

namespace Ui {
    class SendMessageFrame: public Ui_SendMessageFrame {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SENDMESSAGEFRAME_H
