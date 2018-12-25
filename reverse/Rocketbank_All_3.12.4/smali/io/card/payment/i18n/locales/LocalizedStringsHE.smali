.class public final Lio/card/payment/i18n/locales/LocalizedStringsHE;
.super Ljava/lang/Object;
.source "LocalizedStringsHE.java"

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

    sput-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mAdapted:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CANCEL:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_AMERICANEXPRESS:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05d0\u05de\u05e8\u05d9\u05e7\u05df \u05d0\u05e7\u05e1\u05e4\u05e8\u05e1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_DISCOVER:Lio/card/payment/i18n/StringKey;

    const-string v2, "Discover\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_JCB:Lio/card/payment/i18n/StringKey;

    const-string v2, "JCB\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_MASTERCARD:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05de\u05d0\u05e1\u05d8\u05e8\u05e7\u05d0\u05e8\u05d3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_VISA:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05d5\u05d9\u05d6\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->DONE:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05d1\u05d5\u05e6\u05e2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_CVV:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05e7\u05d5\u05d3 \u05d0\u05d9\u05de\u05d5\u05ea \u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_POSTAL_CODE:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05de\u05d9\u05e7\u05d5\u05d3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_CARDHOLDER_NAME:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05e9\u05dd \u05d1\u05e2\u05dc \u05d4\u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_EXPIRES:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05ea\u05d0\u05e8\u05d9\u05da \u05ea\u05e4\u05d5\u05d2\u05d4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->EXPIRES_PLACEHOLDER:Lio/card/payment/i18n/StringKey;

    const-string v2, "MM/YY\u200f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->SCAN_GUIDE:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05d4\u05d7\u05d6\u05e7 \u05d0\u05ea \u05d4\u05db\u05e8\u05d8\u05d9\u05e1 \u05db\u05d0\u05df.\n\u05d4\u05e1\u05e8\u05d9\u05e7\u05d4 \u05ea\u05ea\u05d1\u05e6\u05e2 \u05d1\u05d0\u05d5\u05e4\u05df \u05d0\u05d5\u05d8\u05d5\u05de\u05d8\u05d9."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->KEYBOARD:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05de\u05e7\u05dc\u05d3\u05ea\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_CARD_NUMBER:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05de\u05e1\u05e4\u05e8 \u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->MANUAL_ENTRY_TITLE:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05e4\u05e8\u05d8\u05d9 \u05db\u05e8\u05d8\u05d9\u05e1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ERROR_NO_DEVICE_SUPPORT:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05d4\u05de\u05db\u05e9\u05d9\u05e8 \u05d0\u05d9\u05e0\u05d5 \u05de\u05e1\u05d5\u05d2\u05dc \u05dc\u05d4\u05e9\u05ea\u05de\u05e9 \u05d1\u05de\u05e6\u05dc\u05de\u05d4 \u05dc\u05e7\u05e8\u05d9\u05d0\u05ea \u05de\u05e1\u05e4\u05e8\u05d9 \u05db\u05e8\u05d8\u05d9\u05e1."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_CONNECT_FAIL:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05de\u05e6\u05dc\u05de\u05ea \u05d4\u05de\u05db\u05e9\u05d9\u05e8 \u05d0\u05d9\u05e0\u05d4 \u05d6\u05de\u05d9\u05e0\u05d4."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    sget-object v1, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_UNEXPECTED_FAIL:Lio/card/payment/i18n/StringKey;

    const-string/jumbo v2, "\u05d4\u05de\u05db\u05e9\u05d9\u05e8 \u05e0\u05ea\u05e7\u05dc \u05d1\u05e9\u05d2\u05d9\u05d0\u05d4 \u05d1\u05dc\u05ea\u05d9 \u05e6\u05e4\u05d5\u05d9\u05d4 \u05d1\u05d6\u05de\u05df \u05d4\u05e4\u05e2\u05dc\u05ea \u05d4\u05de\u05e6\u05dc\u05de\u05d4."

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
    sget-object v0, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mAdapted:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    sget-object p1, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mAdapted:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1029
    :cond_0
    sget-object p2, Lio/card/payment/i18n/locales/LocalizedStringsHE;->mDisplay:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "he"

    return-object v0
.end method
