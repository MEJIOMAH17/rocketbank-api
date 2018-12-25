.class public final enum Lru/rocketbank/core/model/UserModel$Gender;
.super Ljava/lang/Enum;
.source "UserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/UserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/UserModel$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/UserModel$Gender;

.field public static final enum female:Lru/rocketbank/core/model/UserModel$Gender;

.field public static final enum male:Lru/rocketbank/core/model/UserModel$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lru/rocketbank/core/model/UserModel$Gender;

    const-string v1, "male"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lru/rocketbank/core/model/UserModel$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/UserModel$Gender;->male:Lru/rocketbank/core/model/UserModel$Gender;

    new-instance v0, Lru/rocketbank/core/model/UserModel$Gender;

    const-string v1, "female"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lru/rocketbank/core/model/UserModel$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/rocketbank/core/model/UserModel$Gender;->female:Lru/rocketbank/core/model/UserModel$Gender;

    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [Lru/rocketbank/core/model/UserModel$Gender;

    sget-object v1, Lru/rocketbank/core/model/UserModel$Gender;->male:Lru/rocketbank/core/model/UserModel$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lru/rocketbank/core/model/UserModel$Gender;->female:Lru/rocketbank/core/model/UserModel$Gender;

    aput-object v1, v0, v3

    sput-object v0, Lru/rocketbank/core/model/UserModel$Gender;->$VALUES:[Lru/rocketbank/core/model/UserModel$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/UserModel$Gender;
    .locals 1

    .line 29
    const-class v0, Lru/rocketbank/core/model/UserModel$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/UserModel$Gender;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/UserModel$Gender;
    .locals 1

    .line 29
    sget-object v0, Lru/rocketbank/core/model/UserModel$Gender;->$VALUES:[Lru/rocketbank/core/model/UserModel$Gender;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/UserModel$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/UserModel$Gender;

    return-object v0
.end method
