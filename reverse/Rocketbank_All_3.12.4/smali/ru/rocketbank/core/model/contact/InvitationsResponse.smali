.class public final Lru/rocketbank/core/model/contact/InvitationsResponse;
.super Lru/rocketbank/core/model/dto/GenericRequestResponseData;
.source "InvitationsResponse.kt"


# instance fields
.field private invitations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/InvitedFriend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInvitations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/InvitedFriend;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lru/rocketbank/core/model/contact/InvitationsResponse;->invitations:Ljava/util/List;

    return-object v0
.end method

.method public final setInvitations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/contact/InvitedFriend;",
            ">;)V"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lru/rocketbank/core/model/contact/InvitationsResponse;->invitations:Ljava/util/List;

    return-void
.end method
