#ifndef SYSTEM_H
#define SYSTEM_H

#include <QObject>

class System : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool carLocked READ carLocked WRITE setCarLocked NOTIFY carLockedChanged FINAL)
    Q_PROPERTY(int carTemp READ carTemp WRITE setCarTemp NOTIFY carTempChanged FINAL)
    Q_PROPERTY(QString userName READ userName WRITE setUserName NOTIFY userNameChanged FINAL)

public:
    explicit System(QObject *parent = nullptr);

    bool carLocked() const;
    void setCarLocked(bool newCarLocked);

    int carTemp() const;
    void setCarTemp(int newCarTemp);

    QString userName() const;
    void setUserName(const QString &newUserName);

signals:
    void carLockedChanged();
    void carTempChanged();

    void userNameChanged();

private:
    bool m_carLocked;
    int m_carTemp;
    QString m_userName;
};

#endif // SYSTEM_H
