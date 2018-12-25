.class public final Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;
.super Lrx/Subscriber;
.source "SoundActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/sound/SoundActivity;->nextPressed(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber<",
        "Lru/rocketbank/core/network/model/PatchProfileAResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    check-cast p1, Landroid/content/Context;

    const v0, 0x7f11018d

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 107
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getSubscription$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lrx/Subscription;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 108
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->hideProgressDialog()V

    return-void
.end method

.method public final bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 100
    check-cast p1, Lru/rocketbank/core/network/model/PatchProfileAResponse;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->onNext(Lru/rocketbank/core/network/model/PatchProfileAResponse;)V

    return-void
.end method

.method public final onNext(Lru/rocketbank/core/network/model/PatchProfileAResponse;)V
    .locals 3

    const-string v0, "userResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getSoundItems$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getActivated$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 113
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {v2}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getSelected$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$setActivated$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;I)V

    .line 114
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getSoundItems$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {v2}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getSelected$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/sound/SchemeItemData;->isActive()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1}, Lru/rocketbank/core/network/model/PatchProfileAResponse;->getResponse()Lru/rocketbank/core/model/dto/ResponseData;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Lru/rocketbank/core/model/dto/ResponseData;->getDescription()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 116
    sget-object p1, Lru/rocketbank/core/utils/SoundNotification;->INSTANCE:Lru/rocketbank/core/utils/SoundNotification;

    invoke-virtual {p1}, Lru/rocketbank/core/utils/SoundNotification;->recreate()V

    .line 117
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getToolbarData$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonOnlyData;->isEnabled()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 118
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$nextPressed$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->hideProgressDialog()V

    return-void
.end method
