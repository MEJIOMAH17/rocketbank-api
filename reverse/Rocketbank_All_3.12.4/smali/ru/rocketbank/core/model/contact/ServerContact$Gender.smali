.class public final enum Lru/rocketbank/core/model/contact/ServerContact$Gender;
.super Ljava/lang/Enum;
.source "ServerContact.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/model/contact/ServerContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lru/rocketbank/core/model/contact/ServerContact$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/rocketbank/core/model/contact/ServerContact$Gender;

.field public static final enum female:Lru/rocketbank/core/model/contact/ServerContact$Gender;

.field public static final enum male:Lru/rocketbank/core/model/contact/ServerContact$Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lru/rocketbank/core/model/contact/ServerContact$Gender;

    new-instance v1, Lru/rocketbank/core/model/contact/ServerContact$Gender;

    const-string v2, "male"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/model/contact/ServerContact$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/model/contact/ServerContact$Gender;->male:Lru/rocketbank/core/model/contact/ServerContact$Gender;

    aput-object v1, v0, v3

    new-instance v1, Lru/rocketbank/core/model/contact/ServerContact$Gender;

    const-string v2, "female"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/model/contact/ServerContact$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lru/rocketbank/core/model/contact/ServerContact$Gender;->female:Lru/rocketbank/core/model/contact/ServerContact$Gender;

    aput-object v1, v0, v3

    sput-object v0, Lru/rocketbank/core/model/contact/ServerContact$Gender;->$VALUES:[Lru/rocketbank/core/model/contact/ServerContact$Gender;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/rocketbank/core/model/contact/ServerContact$Gender;
    .locals 1

    const-class v0, Lru/rocketbank/core/model/contact/ServerContact$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lru/rocketbank/core/model/contact/ServerContact$Gender;

    return-object p0
.end method

.method public static values()[Lru/rocketbank/core/model/contact/ServerContact$Gender;
    .locals 1

    sget-object v0, Lru/rocketbank/core/model/contact/ServerContact$Gender;->$VALUES:[Lru/rocketbank/core/model/contact/ServerContact$Gender;

    invoke-virtual {v0}, [Lru/rocketbank/core/model/contact/ServerContact$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/rocketbank/core/model/contact/ServerContact$Gender;

    return-object v0
.end method
