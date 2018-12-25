.class public final Lio/card/payment/i18n/locales/LocalizedStringsAR;
.super Ljava/lang/Object;
.source "LocalizedStringsAR.java"

# interfaces
.implements Lio/card/payment/i18n/SupportedLocale;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/card/payment/i18n/SupportedLocale<",
        "Lio/card/payment/i18n/StringKey;",
        ">;"
    }
.end annotation


# static fields
.field private static mAdapted:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDisplay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/card/payment/i18n/StringKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mAdapted:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CANCEL:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u0625\u0644\u063a\u0627\u0621"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_AMERICANEXPRESS:Lio/card/payment/i18n/StringKey;

    const-string v2, "American Express\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_DISCOVER:Lio/card/payment/i18n/StringKey;

    const-string v2, "Discover\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_JCB:Lio/card/payment/i18n/StringKey;

    const-string v2, "JCB\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_MASTERCARD:Lio/card/payment/i18n/StringKey;

    const-string v2, "MasterCard\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_VISA:Lio/card/payment/i18n/StringKey;

    const-string v2, "Visa\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->DONE:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u062a\u0645"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_CVV:Lio/card/payment/i18n/StringKey;

    const-string v2, "CVV\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_POSTAL_CODE:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u0627\u0644\u0631\u0645\u0632 \u0627\u0644\u0628\u0631\u064a\u062f\u064a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_CARDHOLDER_NAME:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u0627\u0633\u0645 \u0635\u0627\u062d\u0628 \u0627\u0644\u0628\u0637\u0627\u0642\u0629"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_EXPIRES:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u062a\u0627\u0631\u064a\u062e \u0627\u0646\u062a\u0647\u0627\u0621 \u0627\u0644\u0635\u0644\u0627\u062d\u064a\u0629"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->EXPIRES_PLACEHOLDER:Lio/card/payment/i18n/StringKey;

    const-string v2, "MM/YY\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->SCAN_GUIDE:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u0627\u0645\u0633\u0643 \u0627\u0644\u0628\u0637\u0627\u0642\u0629 \u0647\u0646\u0627.\n \u0633\u062a\u0645\u0633\u062d \u062a\u0644\u0642\u0627\u0626\u064a\u0627."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->KEYBOARD:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u0644\u0648\u062d\u0629 \u0627\u0644\u0645\u0641\u0627\u062a\u064a\u062d\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_CARD_NUMBER:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u0631\u0642\u0645 \u0627\u0644\u0628\u0637\u0627\u0642\u0629"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->MANUAL_ENTRY_TITLE:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u062a\u0641\u0627\u0635\u064a\u0644 \u0627\u0644\u0628\u0637\u0627\u0642\u0629"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ERROR_NO_DEVICE_SUPPORT:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u0647\u0630\u0627 \u0627\u0644\u062c\u0647\u0627\u0632 \u0644\u0627 \u064a\u0645\u0643\u0646\u0647 \u0627\u0633\u062a\u0639\u0645\u0627\u0644 \u0627\u0644\u0643\u0627\u0645\u064a\u0631\u0627 \u0644\u0642\u0631\u0627\u0621\u0629 \u0623\u0631\u0642\u0627\u0645 \u0627\u0644\u0628\u0637\u0627\u0642\u0629."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_CONNECT_FAIL:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u0643\u0627\u0645\u064a\u0631\u0627 \u0627\u0644\u062c\u0647\u0627\u0632 \u063a\u064a\u0631 \u0645\u062a\u0627\u062d\u0629."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_UNEXPECTED_FAIL:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u0627\u0644\u062c\u0647\u0627\u0632 \u062d\u062f\u062b \u0628\u0647 \u062e\u0637\u0627 \u063a\u064a\u0631 \u0645\u062a\u0648\u0642\u0639 \u0639\u0646\u062f \u0641\u062a\u062d \u0627\u0644\u0643\u0627\u0645\u064a\u0631\u0627."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic getAdaptedDisplay(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 13
    check-cast p1, Lio/card/payment/i18n/StringKey;

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/card/payment/i18n/StringKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1026
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mAdapted:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    sget-object p1, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mAdapted:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1029
    :cond_0
    sget-object p2, Lio/card/payment/i18n/locales/LocalizedStringsAR;->mDisplay:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ar"

    return-object v0
.end method
