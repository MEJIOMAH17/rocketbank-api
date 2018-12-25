.class final Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$2;
.super Ljava/lang/Object;
.source "ChangeCodewordFragment.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->nextPressed(Landroid/view/View;)V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$2;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$2;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$2;->$view:Landroid/view/View;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;)Lru/rocketbank/core/widgets/RocketSnackbar;

    .line 135
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$2;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->hideSpinner()V

    .line 137
    instance-of v0, p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    if-eqz v0, :cond_1

    .line 138
    check-cast p1, Lru/rocketbank/core/network/exception/RocketResponseException;

    invoke-virtual {p1}, Lru/rocketbank/core/network/exception/RocketResponseException;->getGenericRequestResponseData()Lru/rocketbank/core/model/dto/GenericRequestResponseData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getErrors()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$2;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    sget v1, Lru/rocketbank/r2d2/R$id;->textViewErrors:I

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "textViewErrors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/GenericRequestResponseData;->getErrors()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$nextPressed$2;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    sget v0, Lru/rocketbank/r2d2/R$id;->textViewErrors:I

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/widgets/RocketTextView;

    const-string v0, "textViewErrors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
