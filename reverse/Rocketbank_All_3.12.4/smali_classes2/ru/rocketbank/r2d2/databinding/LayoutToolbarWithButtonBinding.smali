.class public abstract Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;
.super Landroid/databinding/ViewDataBinding;
.source "LayoutToolbarWithButtonBinding.java"


# instance fields
.field protected mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

.field protected mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

.field public final mainAppbar:Landroid/support/design/widget/AppBarLayout;

.field public final next:Lru/rocketbank/core/widgets/RocketButton;

.field public final toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method protected constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/support/design/widget/AppBarLayout;Lru/rocketbank/core/widgets/RocketButton;Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 23
    iput-object p4, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->mainAppbar:Landroid/support/design/widget/AppBarLayout;

    .line 24
    iput-object p5, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->next:Lru/rocketbank/core/widgets/RocketButton;

    .line 25
    iput-object p6, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;
    .locals 1

    .line 48
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;
    .locals 1

    const v0, 0x7f0c0147

    .line 60
    invoke-static {p1, p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->bind(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;
    .locals 1

    .line 44
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;
    .locals 3

    const v0, 0x7f0c0147

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 56
    invoke-static {p0, v0, v1, v2, p1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;
    .locals 1

    .line 40
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;
    .locals 1

    const v0, 0x7f0c0147

    .line 52
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    return-object p0
.end method


# virtual methods
.method public getHandler()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;
    .locals 1

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->mHandler:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    return-object v0
.end method

.method public getToolbarBinding()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->mToolbarBinding:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    return-object v0
.end method

.method public abstract setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V
.end method

.method public abstract setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V
.end method
