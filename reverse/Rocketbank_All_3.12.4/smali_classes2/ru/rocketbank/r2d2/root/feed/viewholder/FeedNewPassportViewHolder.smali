.class public final Lru/rocketbank/r2d2/root/feed/viewholder/FeedNewPassportViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "FeedNewPassportViewHolder.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;


# instance fields
.field private final data:Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;

.field private operation:Lru/rocketbank/core/NewPassportOperation;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p1, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->root:Landroid/widget/LinearLayout;

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    new-instance v0, Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedNewPassportViewHolder;->data:Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedNewPassportViewHolder;->data:Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->setData(Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;)V

    .line 22
    move-object v0, p0

    check-cast v0, Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;->setListener(Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;)V

    return-void
.end method


# virtual methods
.method public final onBind(Lru/rocketbank/core/NewPassportOperation;)V
    .locals 2

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedNewPassportViewHolder;->operation:Lru/rocketbank/core/NewPassportOperation;

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedNewPassportViewHolder;->data:Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;->getText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/NewPassportOperation;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedNewPassportViewHolder;->data:Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/feed/binding/FeedNewPassportData;->getButtonText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/NewPassportOperation;->getButtonText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final onClick()V
    .locals 4

    .line 32
    sget-object v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity;->Companion:Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedNewPassportViewHolder;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/FeedNewPassportViewHolder;->operation:Lru/rocketbank/core/NewPassportOperation;

    if-nez v2, :cond_1

    const-string v3, "operation"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportActivity$Companion;->startForResult(Landroid/app/Activity;Lru/rocketbank/core/NewPassportOperation;I)V

    return-void
.end method
