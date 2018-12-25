.class public Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;
.super Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;
.source "RocketDrawerDescriptionItem.java"

# interfaces
.implements Lru/rocketbank/r2d2/widgets/RocketDrawer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;",
        "Lru/rocketbank/r2d2/widgets/RocketDrawer<",
        "Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;-><init>()V

    return-void
.end method


# virtual methods
.method protected bindViewHelper(Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Lcom/mikepenz/materialdrawer/model/SecondaryDrawerItem;->bindViewHelper(Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;)V

    .line 28
    iget-object p1, p1, Lcom/mikepenz/materialdrawer/model/BaseSecondaryDrawerItem$BaseViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f09023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06008b

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 31
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->getSelectedTextColor(Landroid/content/Context;)I

    move-result v1

    .line 32
    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->getTextColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

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

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->fragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFragmentTag()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->fragmentTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutRes()I
    .locals 1

    const v0, 0x7f0c019b

    return v0
.end method

.method protected getSelectedColor(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f06024b

    .line 38
    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic withFragment(Ljava/lang/Class;)Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withFragment(Ljava/lang/Class;Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->withFragment(Ljava/lang/Class;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;

    move-result-object p1

    return-object p1
.end method

.method public withFragment(Ljava/lang/Class;)Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->fragmentClass:Ljava/lang/Class;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->fragmentTag:Ljava/lang/String;

    return-object p0
.end method

.method public withFragment(Ljava/lang/Class;Ljava/lang/String;)Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;
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
            "Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->fragmentClass:Ljava/lang/Class;

    .line 62
    iput-object p2, p0, Lru/rocketbank/r2d2/widgets/RocketDrawerDescriptionItem;->fragmentTag:Ljava/lang/String;

    return-object p0
.end method
