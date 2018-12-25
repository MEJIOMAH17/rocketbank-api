.class public final Lru/rocketbank/r2d2/activities/ReferencesActivity$load$$inlined$let$lambda$1;
.super Lrx/Subscriber;
.source "ReferencesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/ReferencesActivity;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Ljava/util/List<",
        "+",
        "Lru/rocketbank/core/model/references/Reference;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/ReferencesActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/ReferencesActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity$load$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/ReferencesActivity;

    .line 52
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity$load$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/ReferencesActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->hideProgressDialog()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/ReferencesActivity$load$$inlined$let$lambda$1;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public final onNext(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/references/Reference;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity$load$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/ReferencesActivity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->access$setCount$p(Lru/rocketbank/r2d2/activities/ReferencesActivity;I)V

    .line 63
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity$load$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/ReferencesActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->access$getBinding$p(Lru/rocketbank/r2d2/activities/ReferencesActivity;)Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;->ref:Landroid/support/v7/widget/CardView;

    const-string v1, "binding.ref"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity$load$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/ReferencesActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->access$getBinding$p(Lru/rocketbank/r2d2/activities/ReferencesActivity;)Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;->container:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/references/Reference;

    .line 66
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity$load$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/ReferencesActivity;

    invoke-static {v1, v0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->access$addView(Lru/rocketbank/r2d2/activities/ReferencesActivity;Lru/rocketbank/core/model/references/Reference;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity$load$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/activities/ReferencesActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->hideProgressDialog()V

    return-void
.end method
