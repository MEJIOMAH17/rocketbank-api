.class public final Lru/rocketbank/core/network/model/PatchProfileBody$User;
.super Ljava/lang/Object;
.source "PatchProfileBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/network/model/PatchProfileBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation


# instance fields
.field private coverId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_id"
    .end annotation
.end field

.field private ctc:Ljava/lang/String;

.field private driver_licence:Ljava/lang/String;

.field private facebookId:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebook_id"
    .end annotation
.end field

.field private facebookToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebook_token"
    .end annotation
.end field

.field private inn:Ljava/lang/String;

.field private penalty_tax_notifications:Ljava/lang/Boolean;

.field private shortTermLogin:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_term_login"
    .end annotation
.end field

.field private sound:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sound"
    .end annotation
.end field

.field private username:Lru/rocketbank/core/network/model/PatchProfileBody$UserName;

.field private userpicId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userpic_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCoverId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->coverId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCtc()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->ctc:Ljava/lang/String;

    return-object v0
.end method

.method public final getDriver_licence()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->driver_licence:Ljava/lang/String;

    return-object v0
.end method

.method public final getFacebookId()Ljava/lang/Long;
    .locals 1

    .line 46
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->facebookId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getFacebookToken()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->facebookToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getInn()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->inn:Ljava/lang/String;

    return-object v0
.end method

.method public final getPenalty_tax_notifications()Ljava/lang/Boolean;
    .locals 1

    .line 51
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->penalty_tax_notifications:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getShortTermLogin()Ljava/lang/Boolean;
    .locals 1

    .line 34
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->shortTermLogin:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getSound()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->sound:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsername()Lru/rocketbank/core/network/model/PatchProfileBody$UserName;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->username:Lru/rocketbank/core/network/model/PatchProfileBody$UserName;

    return-object v0
.end method

.method public final getUserpicId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->userpicId:Ljava/lang/String;

    return-object v0
.end method

.method public final setCoverId(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->coverId:Ljava/lang/String;

    return-void
.end method

.method public final setCtc(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->ctc:Ljava/lang/String;

    return-void
.end method

.method public final setDriver_licence(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->driver_licence:Ljava/lang/String;

    return-void
.end method

.method public final setFacebookId(Ljava/lang/Long;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->facebookId:Ljava/lang/Long;

    return-void
.end method

.method public final setFacebookToken(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->facebookToken:Ljava/lang/String;

    return-void
.end method

.method public final setInn(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->inn:Ljava/lang/String;

    return-void
.end method

.method public final setPenalty_tax_notifications(Ljava/lang/Boolean;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->penalty_tax_notifications:Ljava/lang/Boolean;

    return-void
.end method

.method public final setShortTermLogin(Ljava/lang/Boolean;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->shortTermLogin:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSound(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->sound:Ljava/lang/String;

    return-void
.end method

.method public final setUsername(Lru/rocketbank/core/network/model/PatchProfileBody$UserName;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->username:Lru/rocketbank/core/network/model/PatchProfileBody$UserName;

    return-void
.end method

.method public final setUserpicId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lru/rocketbank/core/network/model/PatchProfileBody$User;->userpicId:Ljava/lang/String;

    return-void
.end method
