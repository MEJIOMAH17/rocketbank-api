.class public final Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;
.super Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;
.source "AnalyticsParallaxItem.kt"


# instance fields
.field private final avatar:Ljava/lang/String;

.field private final hasJointAccount:Z

.field private final jointId:Ljava/lang/Integer;

.field private final name:Ljava/lang/String;

.field private final status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->name:Ljava/lang/String;

    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->avatar:Ljava/lang/String;

    iput-object p3, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->status:Ljava/lang/String;

    iput-object p4, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->jointId:Ljava/lang/Integer;

    iput-boolean p5, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->hasJointAccount:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZILkotlin/jvm/internal/Ref;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 11
    invoke-direct/range {v0 .. v5}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    return-void
.end method


# virtual methods
.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasJointAccount()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->hasJointAccount:Z

    return v0
.end method

.method public final getJointId()Ljava/lang/Integer;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->jointId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/AnalyticsParallaxItem;->status:Ljava/lang/String;

    return-object v0
.end method
