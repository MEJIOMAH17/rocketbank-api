.class public Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;
.super Ljava/lang/Object;
.source "SharedElementsReadyEvent.java"


# instance fields
.field private avatar:Landroid/view/View;

.field private fragment:Landroid/support/v4/app/Fragment;

.field private name:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;->fragment:Landroid/support/v4/app/Fragment;

    .line 17
    iput-object p2, p0, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;->avatar:Landroid/view/View;

    .line 18
    iput-object p3, p0, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;->name:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getAvatar()Landroid/view/View;
    .locals 1

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;->avatar:Landroid/view/View;

    return-object v0
.end method

.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getName()Landroid/view/View;
    .locals 1

    .line 26
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;->name:Landroid/view/View;

    return-object v0
.end method
