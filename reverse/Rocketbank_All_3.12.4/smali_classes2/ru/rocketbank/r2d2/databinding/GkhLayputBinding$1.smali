.class Lru/rocketbank/r2d2/databinding/GkhLayputBinding$1;
.super Ljava/lang/Object;
.source "GkhLayputBinding.java"

# interfaces
.implements Landroid/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/databinding/GkhLayputBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/databinding/GkhLayputBinding;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/databinding/GkhLayputBinding;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding$1;->this$0:Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 5

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding$1;->this$0:Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->gkhPeriod:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-static {v0}, Landroid/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lru/rocketbank/r2d2/databinding/GkhLayputBinding$1;->this$0:Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    invoke-static {v1}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;->access$000(Lru/rocketbank/r2d2/databinding/GkhLayputBinding;)Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    .line 72
    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/transfers/CorporateObservable;->getGkh_period()Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;

    move-result-object v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    .line 80
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;->setValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
