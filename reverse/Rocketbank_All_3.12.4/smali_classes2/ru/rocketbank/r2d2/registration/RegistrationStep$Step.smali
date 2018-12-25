.class public final enum Lru/rocketbank/r2d2/registration/RegistrationStep$Step;
.super Ljava/lang/Enum;
.source "RegistrationStep.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/registration/RegistrationStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Step"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/r2d2/registration/RegistrationStep$Step;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum ACTIVATED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum CARD_READY:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum COMPLETED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum DELIVERING:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum DELIVERY_SHEDULED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum DOCUMENT_CHECK:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum DOCUMENT_REJECTED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum FILL_FORM:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum FORM_CHECK:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum ISSUING:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum NEEDS_PASSPORT:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum NEEDS_REGISTRATION:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum NEED_CALL:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum PASSWORD:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum PIN:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

.field public static final enum ROTTED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "NEEDS_PASSPORT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->NEEDS_PASSPORT:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "NEEDS_REGISTRATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->NEEDS_REGISTRATION:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "FILL_FORM"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->FILL_FORM:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "ISSUING"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->ISSUING:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "CARD_READY"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->CARD_READY:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "DELIVERING"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->DELIVERING:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "PIN"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->PIN:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "ACTIVATED"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->ACTIVATED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "DELIVERY_SHEDULED"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->DELIVERY_SHEDULED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "DOCUMENT_CHECK"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->DOCUMENT_CHECK:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "DOCUMENT_REJECTED"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->DOCUMENT_REJECTED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "PASSWORD"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->PASSWORD:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "COMPLETED"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->COMPLETED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "ROTTED"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->ROTTED:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "NEED_CALL"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->NEED_CALL:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const-string v2, "FORM_CHECK"

    const/16 v3, 0xf

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->FORM_CHECK:Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->$VALUES:[Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/r2d2/registration/RegistrationStep$Step;
    .locals 1

    const-class v0, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/r2d2/registration/RegistrationStep$Step;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->$VALUES:[Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    invoke-virtual {v0}, [Lru/rocketbank/r2d2/registration/RegistrationStep$Step;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/r2d2/registration/RegistrationStep$Step;

    return-object v0
.end method
