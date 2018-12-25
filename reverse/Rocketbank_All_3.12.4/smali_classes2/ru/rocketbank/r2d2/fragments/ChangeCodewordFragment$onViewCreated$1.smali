.class final Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "ChangeCodewordFragment.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 82
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    const-string p3, "textView"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->nextPressed(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
