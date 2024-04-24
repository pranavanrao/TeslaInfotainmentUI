#include "system.h"

System::System(QObject *parent)
    : QObject{parent}
{

}

bool System::carLocake() const
{
    return m_carLocaked;
}

void System::setcarLocake(bool newCarLocaked)
{
    if (m_carLocaked == newCarLocaked)
        return;
    m_carLocaked = newCarLocaked;
    emit carLocakeChanged();
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
