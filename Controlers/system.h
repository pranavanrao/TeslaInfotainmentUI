#ifndef SYSTEM_H
#define SYSTEM_H

#include <QObject>

class System : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool carLocaked READ carLocake WRITE setcarLocake NOTIFY carLocakeChanged FINAL)
    Q_PROPERTY(int carTemp READ carTemp WRITE setCarTemp NOTIFY carTempChanged FINAL)
    Q_PROPERTY(QString userName READ userName WRITE setUserName NOTIFY userNameChanged FINAL)
public:
    explicit System(QObject *parent = nullptr);

    System(const System &) = delete;
    System(System &&) = delete;
    System &operator=(const System &) = delete;
    System &operator=(System &&) = delete;

    bool carLocake() const;
    void setcarLocake(bool newCarLocaked);

    int carTemp() const;
    void setCarTemp(int newCarTemp);

    QString userName() const;
    void setUserName(const QString &newUserName);

signals:

    void carLocakeChanged();
    void carTempChanged();

    void userNameChanged();

private:
    bool m_carLocaked;
    int m_carTemp;
    QString m_userName;
};

#endif // SYSTEM_H
