.class final Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onResume$1;
.super Ljava/lang/Object;
.source "ChangeCodewordFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangeCodewordFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeCodewordFragment.kt\nru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onResume$1\n*L\n1#1,148:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onResume$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;)V
    .locals 2

    .line 101
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onResume$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->access$getBinding$p(Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;)Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;->getToolbarBinding()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;->getButtonEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onResume$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    sget v1, Lru/rocketbank/r2d2/R$id;->editTextCodeword:I

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "editTextCodeword"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string v1, "editTextCodeword.text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onResume$1;->call(Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;)V

    return-void
.end method
