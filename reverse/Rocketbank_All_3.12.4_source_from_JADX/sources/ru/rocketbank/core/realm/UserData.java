package ru.rocketbank.core.realm;

import io.realm.RealmObject;
import io.realm.UserDataRealmProxyInterface;
import io.realm.internal.RealmObjectProxy;
import ru.rocketbank.core.model.enums.Cobrand;

/* compiled from: UserData.kt */
public class UserData extends RealmObject implements UserDataRealmProxyInterface {
    private String activation;
    private String avatar;
    private Double balance;
    private Cobrand cobrand;
    private String cobrandName;
    private String cover;
    private String deviceId;
    private String firstName;
    private String geneder;
    private long id;
    private String lastName;
    private String login;
    private Double miles;
    private int providersHash;
    private String status;
    private String token;
    private WidgetData widgetData;
    private String widgetToken;

    public String realmGet$activation() {
        return this.activation;
    }

    public String realmGet$avatar() {
        return this.avatar;
    }

    public Double realmGet$balance() {
        return this.balance;
    }

    public String realmGet$cobrandName() {
        return this.cobrandName;
    }

    public String realmGet$cover() {
        return this.cover;
    }

    public String realmGet$deviceId() {
        return this.deviceId;
    }

    public String realmGet$firstName() {
        return this.firstName;
    }

    public String realmGet$geneder() {
        return this.geneder;
    }

    public long realmGet$id() {
        return this.id;
    }

    public String realmGet$lastName() {
        return this.lastName;
    }

    public String realmGet$login() {
        return this.login;
    }

    public Double realmGet$miles() {
        return this.miles;
    }

    public int realmGet$providersHash() {
        return this.providersHash;
    }

    public String realmGet$status() {
        return this.status;
    }

    public String realmGet$token() {
        return this.token;
    }

    public WidgetData realmGet$widgetData() {
        return this.widgetData;
    }

    public String realmGet$widgetToken() {
        return this.widgetToken;
    }

    public void realmSet$activation(String str) {
        this.activation = str;
    }

    public void realmSet$avatar(String str) {
        this.avatar = str;
    }

    public void realmSet$balance(Double d) {
        this.balance = d;
    }

    public void realmSet$cobrandName(String str) {
        this.cobrandName = str;
    }

    public void realmSet$cover(String str) {
        this.cover = str;
    }

    public void realmSet$deviceId(String str) {
        this.deviceId = str;
    }

    public void realmSet$firstName(String str) {
        this.firstName = str;
    }

    public void realmSet$geneder(String str) {
        this.geneder = str;
    }

    public void realmSet$id(long j) {
        this.id = j;
    }

    public void realmSet$lastName(String str) {
        this.lastName = str;
    }

    public void realmSet$login(String str) {
        this.login = str;
    }

    public void realmSet$miles(Double d) {
        this.miles = d;
    }

    public void realmSet$providersHash(int i) {
        this.providersHash = i;
    }

    public void realmSet$status(String str) {
        this.status = str;
    }

    public void realmSet$token(String str) {
        this.token = str;
    }

    public void realmSet$widgetData(WidgetData widgetData) {
        this.widgetData = widgetData;
    }

    public void realmSet$widgetToken(String str) {
        this.widgetToken = str;
    }

    public UserData() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
        this.cobrand = Cobrand.ROCKETBANK;
    }
}
