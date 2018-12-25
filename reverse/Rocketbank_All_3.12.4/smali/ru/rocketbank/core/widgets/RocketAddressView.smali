.class public final Lru/rocketbank/core/widgets/RocketAddressView;
.super Landroid/widget/FrameLayout;
.source "RocketAddressView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRocketAddressView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RocketAddressView.kt\nru/rocketbank/core/widgets/RocketAddressView\n*L\n1#1,128:1\n*E\n"
.end annotation


# instance fields
.field private final addressString:Ljava/lang/String;

.field private final backButton:Landroid/widget/ImageView;

.field private final binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

.field private final commentString:Ljava/lang/String;

.field private final data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

.field private final editText:Lru/rocketbank/core/widgets/RocketEditText;

.field private isError:Z

.field private final nextButton:Landroid/widget/ImageView;

.field private final orangeColor:I

.field private final redColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-direct {p1}, Lru/rocketbank/core/data/binding/RocketAddressViewData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/view/LayoutInflater;

    .line 59
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->inflate$3514d18(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    move-result-object p1

    const-string v0, "WidgetAddressViewBinding\u2026ate(inflater, this, true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    .line 60
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    const/16 v0, 0x18

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->setVariable(ILjava/lang/Object;)Z

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060220

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->redColor:I

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060208

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->orangeColor:I

    .line 63
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object p1, p1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->next:Landroid/widget/ImageView;

    const-string v0, "binding.next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->nextButton:Landroid/widget/ImageView;

    .line 64
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object p1, p1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->back:Landroid/widget/ImageView;

    const-string v0, "binding.back"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->backButton:Landroid/widget/ImageView;

    .line 65
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object p1, p1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->addresText:Lru/rocketbank/core/widgets/RocketEditText;

    const-string v0, "binding.addresText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->editText:Lru/rocketbank/core/widgets/RocketEditText;

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110051

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.string.address)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->addressString:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100e6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resources.getString(R.string.comment)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->commentString:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->setAddressMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-direct {p1}, Lru/rocketbank/core/data/binding/RocketAddressViewData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/view/LayoutInflater;

    .line 59
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->inflate$3514d18(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    move-result-object p1

    const-string p2, "WidgetAddressViewBinding\u2026ate(inflater, this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    .line 60
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    const/16 p2, 0x18

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {p1, p2, v0}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->setVariable(ILjava/lang/Object;)Z

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060220

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->redColor:I

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060208

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->orangeColor:I

    .line 63
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object p1, p1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->next:Landroid/widget/ImageView;

    const-string p2, "binding.next"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->nextButton:Landroid/widget/ImageView;

    .line 64
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object p1, p1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->back:Landroid/widget/ImageView;

    const-string p2, "binding.back"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->backButton:Landroid/widget/ImageView;

    .line 65
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object p1, p1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->addresText:Lru/rocketbank/core/widgets/RocketEditText;

    const-string p2, "binding.addresText"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->editText:Lru/rocketbank/core/widgets/RocketEditText;

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110051

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resources.getString(R.string.address)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->addressString:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100e6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resources.getString(R.string.comment)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->commentString:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->setAddressMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p1, Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-direct {p1}, Lru/rocketbank/core/data/binding/RocketAddressViewData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/view/LayoutInflater;

    .line 59
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->inflate$3514d18(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    move-result-object p1

    const-string p2, "WidgetAddressViewBinding\u2026ate(inflater, this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    .line 60
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    const/16 p2, 0x18

    iget-object p3, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {p1, p2, p3}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->setVariable(ILjava/lang/Object;)Z

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060220

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->redColor:I

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060208

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->orangeColor:I

    .line 63
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object p1, p1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->next:Landroid/widget/ImageView;

    const-string p2, "binding.next"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->nextButton:Landroid/widget/ImageView;

    .line 64
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object p1, p1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->back:Landroid/widget/ImageView;

    const-string p2, "binding.back"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->backButton:Landroid/widget/ImageView;

    .line 65
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object p1, p1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->addresText:Lru/rocketbank/core/widgets/RocketEditText;

    const-string p2, "binding.addresText"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->editText:Lru/rocketbank/core/widgets/RocketEditText;

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110051

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resources.getString(R.string.address)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->addressString:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100e6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resources.getString(R.string.comment)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->commentString:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->setAddressMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    new-instance p1, Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-direct {p1}, Lru/rocketbank/core/data/binding/RocketAddressViewData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/view/LayoutInflater;

    .line 59
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->inflate$3514d18(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    move-result-object p1

    const-string p2, "WidgetAddressViewBinding\u2026ate(inflater, this, true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    .line 60
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    const/16 p2, 0x18

    iget-object p3, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {p1, p2, p3}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->setVariable(ILjava/lang/Object;)Z

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060220

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->redColor:I

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f060208

    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->orangeColor:I

    .line 63
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object p1, p1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->next:Landroid/widget/ImageView;

    const-string p2, "binding.next"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->nextButton:Landroid/widget/ImageView;

    .line 64
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object p1, p1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->back:Landroid/widget/ImageView;

    const-string p2, "binding.back"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->backButton:Landroid/widget/ImageView;

    .line 65
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object p1, p1, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->addresText:Lru/rocketbank/core/widgets/RocketEditText;

    const-string p2, "binding.addresText"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->editText:Lru/rocketbank/core/widgets/RocketEditText;

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110051

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resources.getString(R.string.address)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->addressString:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1100e6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resources.getString(R.string.comment)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->commentString:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->setAddressMode()V

    return-void
.end method


# virtual methods
.method public final addTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    const-string v0, "textWatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->editText:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final getEditText()Lru/rocketbank/core/widgets/RocketEditText;
    .locals 1

    .line 94
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->editText:Lru/rocketbank/core/widgets/RocketEditText;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object v0, v0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->addresText:Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "binding.addresText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isError()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->isError:Z

    return v0
.end method

.method public final removeTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    const-string v0, "textWatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->editText:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final reset()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAddressView;->setAddressMode()V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->isError:Z

    .line 108
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getErrorVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 109
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->nextButton:Landroid/widget/ImageView;

    const v1, 0x7f08016c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final setAddressError()V
    .locals 4

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->isError:Z

    .line 114
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getNextButtonColor()Landroid/databinding/ObservableField;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lru/rocketbank/core/widgets/RocketAddressView;->redColor:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->nextButton:Landroid/widget/ImageView;

    const v2, 0x7f08012e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getNextButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 117
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v1}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getErrorVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final setAddressMode()V
    .locals 4

    .line 76
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->setAddress(Z)V

    .line 77
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getAddressTextHint()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v2, p0, Lru/rocketbank/core/widgets/RocketAddressView;->addressString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getBackButtonVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 79
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getBackButtonColor()Landroid/databinding/ObservableField;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lru/rocketbank/core/widgets/RocketAddressView;->orangeColor:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getNextButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 82
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getNextButtonVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 83
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getNextButtonColor()Landroid/databinding/ObservableField;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p0, Lru/rocketbank/core/widgets/RocketAddressView;->orangeColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setCommentMode()V
    .locals 2

    .line 121
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->setAddress(Z)V

    .line 122
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getBackButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 123
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getBackButtonVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 124
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->data:Lru/rocketbank/core/data/binding/RocketAddressViewData;

    invoke-virtual {v0}, Lru/rocketbank/core/data/binding/RocketAddressViewData;->getAddressTextHint()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketAddressView;->commentString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->editText:Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setListener(Lru/rocketbank/core/data/binding/ButtonAddressListener;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    const/16 v1, 0x37

    invoke-virtual {v0, v1, p1}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->setVariable(ILjava/lang/Object;)Z

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAddressView;->binding:Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    iget-object v0, v0, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;->addresText:Lru/rocketbank/core/widgets/RocketEditText;

    .line 98
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketEditText;->setSelection(I)V

    return-void
.end method
