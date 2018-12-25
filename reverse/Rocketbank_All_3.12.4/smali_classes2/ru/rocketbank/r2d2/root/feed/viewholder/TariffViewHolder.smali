.class public final Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "TariffViewHolder.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/feed/FeedTariffClickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTariffViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TariffViewHolder.kt\nru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder\n*L\n1#1,36:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

.field private final data:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;)V
    .locals 4

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    .line 18
    new-instance p1, Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;

    .line 21
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->setData(Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;)V

    .line 22
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/data/binding/feed/FeedTariffClickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->setListener(Lru/rocketbank/r2d2/data/binding/feed/FeedTariffClickListener;)V

    .line 23
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->background:Landroid/widget/ImageView;

    const-string v0, "binding.background"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f08024a

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lru/rocketbank/core/utils/ImageHelper;->loadFromRes$default(ILandroid/widget/ImageView;IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;
    .locals 1

    .line 14
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    return-object v0
.end method

.method public final onBind(Lru/rocketbank/core/model/TariffOperation;)V
    .locals 2

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->setOperation(Lru/rocketbank/core/model/TariffOperation;)V

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;->getTariffText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/TariffOperation;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;->getTariffDescription()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/TariffOperation;->getSubtitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedTariffHolderData;->getButtonText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/TariffOperation;->getButtonText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toUpperCase()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final onTariffButtonClicked(Lru/rocketbank/core/model/TariffOperation;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity;->Companion:Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TariffViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v2, "binding.root"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "binding.root.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/TariffOperation;->getInfoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lru/rocketbank/core/model/TariffOperation;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lru/rocketbank/r2d2/activities/tariffs/SalaryTariffInstructionActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
