/********************************************************************************
** Form generated from reading UI file 'miningframe.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MININGFRAME_H
#define UI_MININGFRAME_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QFrame>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>

QT_BEGIN_NAMESPACE

class Ui_MiningFrame
{
public:
    QVBoxLayout *verticalLayout;
    QGridLayout *gridLayout;
    QLabel *label_3;
    QComboBox *m_poolCombo;
    QLabel *label_2;
    QLabel *label;
    QComboBox *m_cpuCombo;
    QLabel *m_stateLabel;
    QPushButton *m_addPoolButton;
    QHBoxLayout *horizontalLayout;
    QPushButton *m_startButton;
    QPushButton *m_stopButton;
    QSpacerItem *horizontalSpacer;
    QSpacerItem *verticalSpacer;
    QButtonGroup *m_miningButtonGroup;

    void setupUi(QFrame *MiningFrame)
    {
        if (MiningFrame->objectName().isEmpty())
            MiningFrame->setObjectName(QStringLiteral("MiningFrame"));
        MiningFrame->resize(760, 469);
        MiningFrame->setFrameShape(QFrame::StyledPanel);
        MiningFrame->setFrameShadow(QFrame::Raised);
        verticalLayout = new QVBoxLayout(MiningFrame);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        gridLayout = new QGridLayout();
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setHorizontalSpacing(20);
        label_3 = new QLabel(MiningFrame);
        label_3->setObjectName(QStringLiteral("label_3"));

        gridLayout->addWidget(label_3, 2, 0, 1, 1);

        m_poolCombo = new QComboBox(MiningFrame);
        m_poolCombo->setObjectName(QStringLiteral("m_poolCombo"));
        m_poolCombo->setEditable(false);

        gridLayout->addWidget(m_poolCombo, 0, 1, 1, 1);

        label_2 = new QLabel(MiningFrame);
        label_2->setObjectName(QStringLiteral("label_2"));

        gridLayout->addWidget(label_2, 1, 0, 1, 1);

        label = new QLabel(MiningFrame);
        label->setObjectName(QStringLiteral("label"));

        gridLayout->addWidget(label, 0, 0, 1, 1);

        m_cpuCombo = new QComboBox(MiningFrame);
        m_cpuCombo->setObjectName(QStringLiteral("m_cpuCombo"));

        gridLayout->addWidget(m_cpuCombo, 1, 1, 1, 1, Qt::AlignLeft);

        m_stateLabel = new QLabel(MiningFrame);
        m_stateLabel->setObjectName(QStringLiteral("m_stateLabel"));

        gridLayout->addWidget(m_stateLabel, 2, 1, 1, 1);

        m_addPoolButton = new QPushButton(MiningFrame);
        m_addPoolButton->setObjectName(QStringLiteral("m_addPoolButton"));

        gridLayout->addWidget(m_addPoolButton, 0, 2, 1, 1, Qt::AlignLeft);

        gridLayout->setColumnStretch(1, 1);
        gridLayout->setColumnStretch(2, 2);

        verticalLayout->addLayout(gridLayout);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        m_startButton = new QPushButton(MiningFrame);
        m_miningButtonGroup = new QButtonGroup(MiningFrame);
        m_miningButtonGroup->setObjectName(QStringLiteral("m_miningButtonGroup"));
        m_miningButtonGroup->addButton(m_startButton);
        m_startButton->setObjectName(QStringLiteral("m_startButton"));
        m_startButton->setCheckable(true);

        horizontalLayout->addWidget(m_startButton);

        m_stopButton = new QPushButton(MiningFrame);
        m_miningButtonGroup->addButton(m_stopButton);
        m_stopButton->setObjectName(QStringLiteral("m_stopButton"));
        m_stopButton->setEnabled(false);
        m_stopButton->setCheckable(true);
        m_stopButton->setChecked(true);

        horizontalLayout->addWidget(m_stopButton);

        horizontalSpacer = new QSpacerItem(40, 20, QSizePolicy::Expanding, QSizePolicy::Minimum);

        horizontalLayout->addItem(horizontalSpacer);


        verticalLayout->addLayout(horizontalLayout);

        verticalSpacer = new QSpacerItem(20, 40, QSizePolicy::Minimum, QSizePolicy::Expanding);

        verticalLayout->addItem(verticalSpacer);


        retranslateUi(MiningFrame);
        QObject::connect(m_startButton, SIGNAL(toggled(bool)), m_startButton, SLOT(setDisabled(bool)));
        QObject::connect(m_stopButton, SIGNAL(toggled(bool)), m_stopButton, SLOT(setDisabled(bool)));
        QObject::connect(m_miningButtonGroup, SIGNAL(buttonClicked(QAbstractButton*)), MiningFrame, SLOT(startStopClicked(QAbstractButton*)));
        QObject::connect(m_addPoolButton, SIGNAL(clicked()), MiningFrame, SLOT(addPoolClicked()));

        QMetaObject::connectSlotsByName(MiningFrame);
    } // setupUi

    void retranslateUi(QFrame *MiningFrame)
    {
        MiningFrame->setWindowTitle(QApplication::translate("MiningFrame", "Frame", 0));
        label_3->setText(QApplication::translate("MiningFrame", "Mining status", 0));
        label_2->setText(QApplication::translate("MiningFrame", "CPU cores", 0));
        label->setText(QApplication::translate("MiningFrame", "Select pool", 0));
        m_stateLabel->setText(QApplication::translate("MiningFrame", "Stopped", 0));
        m_addPoolButton->setText(QApplication::translate("MiningFrame", "Add pool", 0));
        m_startButton->setText(QApplication::translate("MiningFrame", "Start mining", 0));
        m_stopButton->setText(QApplication::translate("MiningFrame", "Pause mining", 0));
    } // retranslateUi

};

namespace Ui {
    class MiningFrame: public Ui_MiningFrame {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MININGFRAME_H
