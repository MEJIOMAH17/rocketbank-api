.class public abstract Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;
.super Landroid/databinding/ViewDataBinding;
.source "CardTransferHeaderLayoutBinding.java"


# instance fields
.field public final cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

.field public final cardRoot:Landroid/widget/LinearLayout;

.field public final creditCard:Lru/rocketbank/core/widgets/CreditCardView;

.field protected mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

.field protected mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

.field public final rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method protected constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILru/rocketbank/core/widgets/RocketTextView;Landroid/widget/LinearLayout;Lru/rocketbank/core/widgets/CreditCardView;Lru/rocketbank/core/widgets/RocketTextView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 26
    iput-object p4, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->cardPhoto:Lru/rocketbank/core/widgets/RocketTextView;

    .line 27
    iput-object p5, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->cardRoot:Landroid/widget/LinearLayout;

    .line 28
    iput-object p6, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->creditCard:Lru/rocketbank/core/widgets/CreditCardView;

    .line 29
    iput-object p7, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->rocketTextView:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;
    .locals 1

    .line 52
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;
    .locals 1

    const v0, 0x7f0c007f

    .line 64
    invoke-static {p1, p0, v0}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->bind(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;
    .locals 1

    .line 48
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;
    .locals 3

    const v0, 0x7f0c007f

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-static {p0, v0, v1, v2, p1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;
    .locals 1

    .line 44
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;
    .locals 1

    const v0, 0x7f0c007f

    .line 56
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getAbility()Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;
    .locals 1

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->mAbility:Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;

    return-object v0
.end method

.method public getActions()Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;
    .locals 1

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBinding;->mActions:Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;

    return-object v0
.end method

.method public abstract setAbility(Lru/rocketbank/r2d2/data/binding/card/CardAbilityData;)V
.end method

.method public abstract setActions(Lru/rocketbank/r2d2/data/binding/card/CardAbilityHandler;)V
.end method
