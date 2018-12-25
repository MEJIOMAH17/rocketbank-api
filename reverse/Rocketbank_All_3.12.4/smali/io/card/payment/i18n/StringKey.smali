.class public final enum Lio/card/payment/i18n/StringKey;
.super Ljava/lang/Enum;
.source "StringKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/card/payment/i18n/StringKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/card/payment/i18n/StringKey;

.field public static final enum CANCEL:Lio/card/payment/i18n/StringKey;

.field public static final enum CARDTYPE_AMERICANEXPRESS:Lio/card/payment/i18n/StringKey;

.field public static final enum CARDTYPE_DISCOVER:Lio/card/payment/i18n/StringKey;

.field public static final enum CARDTYPE_JCB:Lio/card/payment/i18n/StringKey;

.field public static final enum CARDTYPE_MAESTRO:Lio/card/payment/i18n/StringKey;

.field public static final enum CARDTYPE_MASTERCARD:Lio/card/payment/i18n/StringKey;

.field public static final enum CARDTYPE_VISA:Lio/card/payment/i18n/StringKey;

.field public static final enum DONE:Lio/card/payment/i18n/StringKey;

.field public static final enum ENTRY_CARDHOLDER_NAME:Lio/card/payment/i18n/StringKey;

.field public static final enum ENTRY_CARD_NUMBER:Lio/card/payment/i18n/StringKey;

.field public static final enum ENTRY_CVV:Lio/card/payment/i18n/StringKey;

.field public static final enum ENTRY_EXPIRES:Lio/card/payment/i18n/StringKey;

.field public static final enum ENTRY_POSTAL_CODE:Lio/card/payment/i18n/StringKey;

.field public static final enum ERROR_CAMERA_CONNECT_FAIL:Lio/card/payment/i18n/StringKey;

.field public static final enum ERROR_CAMERA_UNEXPECTED_FAIL:Lio/card/payment/i18n/StringKey;

.field public static final enum ERROR_NO_DEVICE_SUPPORT:Lio/card/payment/i18n/StringKey;

.field public static final enum EXPIRES_PLACEHOLDER:Lio/card/payment/i18n/StringKey;

.field public static final enum KEYBOARD:Lio/card/payment/i18n/StringKey;

.field public static final enum MANUAL_ENTRY_TITLE:Lio/card/payment/i18n/StringKey;

.field public static final enum SCAN_GUIDE:Lio/card/payment/i18n/StringKey;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 12
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "CANCEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->CANCEL:Lio/card/payment/i18n/StringKey;

    .line 13
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "CARDTYPE_AMERICANEXPRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->CARDTYPE_AMERICANEXPRESS:Lio/card/payment/i18n/StringKey;

    .line 14
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "CARDTYPE_DISCOVER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->CARDTYPE_DISCOVER:Lio/card/payment/i18n/StringKey;

    .line 15
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "CARDTYPE_JCB"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->CARDTYPE_JCB:Lio/card/payment/i18n/StringKey;

    .line 16
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "CARDTYPE_MASTERCARD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->CARDTYPE_MASTERCARD:Lio/card/payment/i18n/StringKey;

    .line 17
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "CARDTYPE_MAESTRO"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->CARDTYPE_MAESTRO:Lio/card/payment/i18n/StringKey;

    .line 18
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "CARDTYPE_VISA"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->CARDTYPE_VISA:Lio/card/payment/i18n/StringKey;

    .line 19
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "DONE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->DONE:Lio/card/payment/i18n/StringKey;

    .line 20
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "ENTRY_CVV"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->ENTRY_CVV:Lio/card/payment/i18n/StringKey;

    .line 21
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "ENTRY_POSTAL_CODE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->ENTRY_POSTAL_CODE:Lio/card/payment/i18n/StringKey;

    .line 22
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "ENTRY_CARDHOLDER_NAME"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->ENTRY_CARDHOLDER_NAME:Lio/card/payment/i18n/StringKey;

    .line 23
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "ENTRY_EXPIRES"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->ENTRY_EXPIRES:Lio/card/payment/i18n/StringKey;

    .line 24
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "EXPIRES_PLACEHOLDER"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->EXPIRES_PLACEHOLDER:Lio/card/payment/i18n/StringKey;

    .line 25
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "SCAN_GUIDE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->SCAN_GUIDE:Lio/card/payment/i18n/StringKey;

    .line 28
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "KEYBOARD"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->KEYBOARD:Lio/card/payment/i18n/StringKey;

    .line 29
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "ENTRY_CARD_NUMBER"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->ENTRY_CARD_NUMBER:Lio/card/payment/i18n/StringKey;

    .line 30
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "MANUAL_ENTRY_TITLE"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->MANUAL_ENTRY_TITLE:Lio/card/payment/i18n/StringKey;

    .line 31
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "ERROR_NO_DEVICE_SUPPORT"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->ERROR_NO_DEVICE_SUPPORT:Lio/card/payment/i18n/StringKey;

    .line 32
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "ERROR_CAMERA_CONNECT_FAIL"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_CONNECT_FAIL:Lio/card/payment/i18n/StringKey;

    .line 33
    new-instance v0, Lio/card/payment/i18n/StringKey;

    const-string v1, "ERROR_CAMERA_UNEXPECTED_FAIL"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lio/card/payment/i18n/StringKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_UNEXPECTED_FAIL:Lio/card/payment/i18n/StringKey;

    const/16 v0, 0x14

    .line 7
    new-array v0, v0, [Lio/card/payment/i18n/StringKey;

    sget-object v1, Lio/card/payment/i18n/StringKey;->CANCEL:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v2

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_AMERICANEXPRESS:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v3

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_DISCOVER:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v4

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_JCB:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v5

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_MASTERCARD:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v6

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_MAESTRO:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v7

    sget-object v1, Lio/card/payment/i18n/StringKey;->CARDTYPE_VISA:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v8

    sget-object v1, Lio/card/payment/i18n/StringKey;->DONE:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v9

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_CVV:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v10

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_POSTAL_CODE:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v11

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_CARDHOLDER_NAME:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v12

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_EXPIRES:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v13

    sget-object v1, Lio/card/payment/i18n/StringKey;->EXPIRES_PLACEHOLDER:Lio/card/payment/i18n/StringKey;

    aput-object v1, v0, v14

    sget-object v1, Lio/card/payment/i18n/StringKey;->SCAN_GUIDE:Lio/card/payment/i18n/StringKey;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lio/card/payment/i18n/StringKey;->KEYBOARD:Lio/card/payment/i18n/StringKey;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lio/card/payment/i18n/StringKey;->ENTRY_CARD_NUMBER:Lio/card/payment/i18n/StringKey;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lio/card/payment/i18n/StringKey;->MANUAL_ENTRY_TITLE:Lio/card/payment/i18n/StringKey;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lio/card/payment/i18n/StringKey;->ERROR_NO_DEVICE_SUPPORT:Lio/card/payment/i18n/StringKey;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_CONNECT_FAIL:Lio/card/payment/i18n/StringKey;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lio/card/payment/i18n/StringKey;->ERROR_CAMERA_UNEXPECTED_FAIL:Lio/card/payment/i18n/StringKey;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lio/card/payment/i18n/StringKey;->$VALUES:[Lio/card/payment/i18n/StringKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/card/payment/i18n/StringKey;
    .locals 1

    .line 7
    const-class v0, Lio/card/payment/i18n/StringKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/card/payment/i18n/StringKey;

    return-object p0
.end method

.method public static values()[Lio/card/payment/i18n/StringKey;
    .locals 1

    .line 7
    sget-object v0, Lio/card/payment/i18n/StringKey;->$VALUES:[Lio/card/payment/i18n/StringKey;

    invoke-virtual {v0}, [Lio/card/payment/i18n/StringKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/card/payment/i18n/StringKey;

    return-object v0
.end method
