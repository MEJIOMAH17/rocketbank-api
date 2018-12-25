.class public Lru/rocketbank/r2d2/widgets/RocketDrawerItem;
.super Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;
.source "RocketDrawerItem.java"

# interfaces
.implements Lru/rocketbank/r2d2/widgets/RocketDrawer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;",
        "Lru/rocketbank/r2d2/widgets/RocketDrawer<",
        "Lru/rocketbank/r2d2/widgets/RocketDrawerItem;",
        ">;"
    }
.end annotation


# instance fields
.field private fragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentTag:Ljava/lang/String;

.field private iconGravity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->iconGravity:I

    return-void
.end method

.method private withIconGravityTop()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;
    .locals 1

    const/16 v0, 0x30

    .line 51
    iput v0, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->iconGravity:I

    return-object p0
.end method


# virtual methods
.method public getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->fragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->fragmentTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutRes()I
    .locals 1

    const v0, 0x7f0c019a

    return v0
.end method

.method protected getSelectedColor(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f06024b

    .line 35
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V
    .locals 2

    .line 82
    iget v0, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->iconGravity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v0, 0x7f090240

    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->iconGravity:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->onPostBindView(Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;Landroid/view/View;)V

    return-void
.end method

.method public withDescription(I)Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;
    .locals 0

    .line 40
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withIconGravityTop()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    .line 41
    invoke-super {p0, p1}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withDescription(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    return-object p1
.end method

.method public withDescription(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;
    .locals 0

    .line 46
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withIconGravityTop()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    .line 47
    invoke-super {p0, p1}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withDescription(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    return-object p1
.end method

.method public bridge synthetic withDescription(I)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withDescription(I)Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withDescription(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withDescription(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFragment(Ljava/lang/Class;)Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFragment(Ljava/lang/Class;Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->withFragment(Ljava/lang/Class;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;

    move-result-object p1

    return-object p1
.end method

.method public withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Lru/rocketbank/r2d2/widgets/RocketDrawerItem;"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->fragmentClass:Ljava/lang/Class;

    .line 63
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->fragmentTag:Ljava/lang/String;

    return-object p0
.end method

.method public withFragment(Ljava/lang/Class;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/RocketDrawerItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lru/rocketbank/r2d2/widgets/RocketDrawerItem;"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->fragmentClass:Ljava/lang/Class;

    .line 57
    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->fragmentTag:Ljava/lang/String;

    return-object p0
.end method

.method public withoutBadge()Lru/rocketbank/r2d2/widgets/RocketDrawerItem;
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerItem;->mBadge:Lcom/mikepenz/materialdrawer/holder/StringHolder;

    return-object p0
.end method
