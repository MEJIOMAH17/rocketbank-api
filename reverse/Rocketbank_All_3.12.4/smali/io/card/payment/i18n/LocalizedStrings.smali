.class public final Lio/card/payment/i18n/LocalizedStrings;
.super Ljava/lang/Object;
.source "LocalizedStrings.java"


# static fields
.field private static final i18nManager:Lio/card/payment/i18n/I18nManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/card/payment/i18n/I18nManager<",
            "Lio/card/payment/i18n/StringKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lio/card/payment/i18n/I18nManager;

    const-class v1, Lio/card/payment/i18n/StringKey;

    sget-object v2, Lio/card/payment/i18n/locales/LocalizedStringsList;->ALL_LOCALES:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lio/card/payment/i18n/I18nManager;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    sput-object v0, Lio/card/payment/i18n/LocalizedStrings;->i18nManager:Lio/card/payment/i18n/I18nManager;

    return-void
.end method

.method public static getString(Lio/card/payment/i18n/StringKey;)Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lio/card/payment/i18n/LocalizedStrings;->i18nManager:Lio/card/payment/i18n/I18nManager;

    invoke-virtual {v0, p0}, Lio/card/payment/i18n/I18nManager;->getString(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Lio/card/payment/i18n/StringKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 38
    sget-object v0, Lio/card/payment/i18n/LocalizedStrings;->i18nManager:Lio/card/payment/i18n/I18nManager;

    sget-object v1, Lio/card/payment/i18n/LocalizedStrings;->i18nManager:Lio/card/payment/i18n/I18nManager;

    invoke-virtual {v1, p1}, Lio/card/payment/i18n/I18nManager;->getLocaleFromSpecifier(Ljava/lang/String;)Lio/card/payment/i18n/SupportedLocale;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/card/payment/i18n/I18nManager;->getString(Ljava/lang/Enum;Lio/card/payment/i18n/SupportedLocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setLanguage(Landroid/content/Intent;)V
    .locals 2

    .line 48
    sget-object v0, Lio/card/payment/i18n/LocalizedStrings;->i18nManager:Lio/card/payment/i18n/I18nManager;

    const-string v1, "io.card.payment.languageOrLocale"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/card/payment/i18n/I18nManager;->setLanguage(Ljava/lang/String;)V

    return-void
.end method
