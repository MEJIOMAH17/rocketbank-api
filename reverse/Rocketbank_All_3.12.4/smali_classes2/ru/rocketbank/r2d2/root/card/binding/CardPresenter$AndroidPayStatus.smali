.class final enum Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;
.super Ljava/lang/Enum;
.source "CardPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/card/binding/CardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AndroidPayStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

.field public static final enum NOT_FOUND:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

.field public static final enum NOT_WORKS:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

.field public static final enum NO_TUR:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

.field public static final enum NO_WALLET:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

.field public static final enum PENDING_ADD:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

.field public static final enum TUR_ACTIVE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

.field public static final enum TUR_NOT_ACTIVE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

.field public static final enum TUR_UNTOKENIZED:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    const-string v2, "NO_WALLET"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NO_WALLET:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    const-string v2, "NO_TUR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NO_TUR:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    const-string v2, "NOT_FOUND"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NOT_FOUND:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    const-string v2, "TUR_NOT_ACTIVE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->TUR_NOT_ACTIVE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    const-string v2, "TUR_UNTOKENIZED"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->TUR_UNTOKENIZED:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    const-string v2, "TUR_ACTIVE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->TUR_ACTIVE:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    const-string v2, "NOT_WORKS"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->NOT_WORKS:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    const-string v2, "PENDING_ADD"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->PENDING_ADD:Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    aput-object v1, v0, v3

    sput-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->$VALUES:[Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;
    .locals 1

    const-class v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->$VALUES:[Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    invoke-virtual {v0}, [Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/r2d2/root/card/binding/CardPresenter$AndroidPayStatus;

    return-object v0
.end method
