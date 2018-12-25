.class final Lru/rocketbank/r2d2/fragments/InfoFragment$setInfo$1;
.super Ljava/lang/Object;
.source "InfoFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/InfoFragment;->setInfo(Lru/rocketbank/core/model/UserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $info:Lru/rocketbank/core/model/UserModel$Info;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/InfoFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/InfoFragment;Lru/rocketbank/core/model/UserModel$Info;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InfoFragment$setInfo$1;->this$0:Lru/rocketbank/r2d2/fragments/InfoFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/InfoFragment$setInfo$1;->$info:Lru/rocketbank/core/model/UserModel$Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/InfoFragment$setInfo$1;->this$0:Lru/rocketbank/r2d2/fragments/InfoFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/InfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InfoFragment$setInfo$1;->$info:Lru/rocketbank/core/model/UserModel$Info;

    const-string v1, "info"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel$Info;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/Utils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
