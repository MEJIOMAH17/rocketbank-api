.class public final Lru/rocketbank/core/network/model/WidgetFriend;
.super Ljava/lang/Object;
.source "WidgetFriend.kt"


# instance fields
.field private firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_name"
    .end annotation
.end field

.field private id:I

.field private lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_name"
    .end annotation
.end field

.field private userpicUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userpic_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFirstName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/core/network/model/WidgetFriend;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 6
    iget v0, p0, Lru/rocketbank/core/network/model/WidgetFriend;->id:I

    return v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lru/rocketbank/core/network/model/WidgetFriend;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserpicUrl()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lru/rocketbank/core/network/model/WidgetFriend;->userpicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lru/rocketbank/core/network/model/WidgetFriend;->firstName:Ljava/lang/String;

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 6
    iput p1, p0, Lru/rocketbank/core/network/model/WidgetFriend;->id:I

    return-void
.end method

.method public final setLastName(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lru/rocketbank/core/network/model/WidgetFriend;->lastName:Ljava/lang/String;

    return-void
.end method

.method public final setUserpicUrl(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/core/network/model/WidgetFriend;->userpicUrl:Ljava/lang/String;

    return-void
.end method
