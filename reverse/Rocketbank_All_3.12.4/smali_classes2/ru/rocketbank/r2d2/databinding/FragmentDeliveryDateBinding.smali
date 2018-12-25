.class public abstract Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;
.super Landroid/databinding/ViewDataBinding;
.source "FragmentDeliveryDateBinding.java"


# instance fields
.field public final intervalsView:Landroid/widget/LinearLayout;

.field protected mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;

.field protected mListener:Landroid/view/View$OnClickListener;

.field public final nextButton:Lru/rocketbank/core/widgets/RocketButton;

.field public final rockerCalendar:Lru/rocketbank/core/widgets/RocketCalendarView;

.field public final separator:Landroid/view/View;

.field public final staticText:Lru/rocketbank/core/widgets/RocketTextView;


# direct methods
.method protected constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/LinearLayout;Lru/rocketbank/core/widgets/RocketButton;Lru/rocketbank/core/widgets/RocketCalendarView;Landroid/view/View;Lru/rocketbank/core/widgets/RocketTextView;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 29
    iput-object p4, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->intervalsView:Landroid/widget/LinearLayout;

    .line 30
    iput-object p5, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->nextButton:Lru/rocketbank/core/widgets/RocketButton;

    .line 31
    iput-object p6, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->rockerCalendar:Lru/rocketbank/core/widgets/RocketCalendarView;

    .line 32
    iput-object p7, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->separator:Landroid/view/View;

    .line 33
    iput-object p8, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->staticText:Lru/rocketbank/core/widgets/RocketTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;
    .locals 1

    .line 56
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;
    .locals 1

    const v0, 0x7f0c00d0

    .line 68
    invoke-static {p1, p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->bind(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;
    .locals 1

    .line 52
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;
    .locals 3

    const v0, 0x7f0c00d0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-static {p0, v0, v1, v2, p1}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;
    .locals 1

    .line 48
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;
    .locals 1

    const v0, 0x7f0c00d0

    .line 60
    invoke-static {p0, v0, p1, p2, p3}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;

    return-object p0
.end method


# virtual methods
.method public getData()Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;
    .locals 1

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->mData:Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;

    return-object v0
.end method

.method public getListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBinding;->mListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public abstract setData(Lru/rocketbank/r2d2/data/binding/delivery/DeliveryDateTimeData;)V
.end method

.method public abstract setListener(Landroid/view/View$OnClickListener;)V
.end method
