#include "system.h"

System::System(QObject *parent)
    : QObject{parent}, m_carLocked(false), m_carTemp(64), m_userName("Pranav")
{}

bool System::carLocked() const
{
    return m_carLocked;
}

void System::setCarLocked(bool newCarLocked)
{
    if (m_carLocked == newCarLocked)
        return;
    m_carLocked = newCarLocked;
    emit carLockedChanged();
}

int System::carTemp() const
{
    return m_carTemp;
}

void System::setCarTemp(int newCarTemp)
{
    if (m_carTemp == newCarTemp)
        return;
    m_carTemp = newCarTemp;
    emit carTempChanged();
}

QString System::userName() const
{
    return m_userName;
}

void System::setUserName(const QString &newUserName)
{
    if (m_userName == newUserName)
        return;
    m_userName = newUserName;
    emit userNameChanged();
}
