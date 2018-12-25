.class public final Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "SoundActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/sound/SoundActivity;->setCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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

    .line 274
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColor(I)I
    .locals 1

    .line 277
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final onSlide(Landroid/view/View;F)V
    .locals 0

    const-string p2, "bottomSheet"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final onStateChanged(Landroid/view/View;I)V
    .locals 5

    const-string v0, "bottomSheet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    const p1, 0x7f060023

    .line 288
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->getColor(I)I

    move-result p1

    const p2, 0x7f060238

    .line 289
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->getColor(I)I

    move-result p2

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_1
    const p1, 0x7f060254

    .line 294
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->getColor(I)I

    move-result p1

    const p2, 0x7f060200

    .line 296
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->getColor(I)I

    move-result v0

    move p2, p1

    .line 300
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    iget-object v2, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {v2}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getBinding$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    move-result-object v2

    iget-object v2, v2, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->headMusic:Landroid/widget/LinearLayout;

    const-string v3, "binding.headMusic"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "backgroundColor"

    .line 302
    iget-object v4, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {v4}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getSoundBinding$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    move-result-object v4

    invoke-virtual {v4}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getBackgroundColor()Landroid/databinding/ObservableInt;

    move-result-object v4

    invoke-virtual {v4}, Landroid/databinding/ObservableInt;->get()I

    move-result v4

    .line 300
    invoke-virtual {v1, v2, v3, v4, v0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->animateColor(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 305
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getBinding$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    move-result-object v1

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->previewPlayTitle:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v2, "binding.previewPlayTitle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "textColor"

    .line 307
    iget-object v3, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {v3}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getSoundBinding$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    move-result-object v3

    invoke-virtual {v3}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getSubTextColor()Landroid/databinding/ObservableInt;

    move-result-object v3

    invoke-virtual {v3}, Landroid/databinding/ObservableInt;->get()I

    move-result v3

    .line 305
    invoke-virtual {v0, v1, v2, v3, p1}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->animateColor(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 310
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getBinding$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    move-result-object v0

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;->playSchemeTitle:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "binding.playSchemeTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "textColor"

    .line 312
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/sound/SoundActivity$setCallback$1;->this$0:Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-static {v2}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->access$getSoundBinding$p(Lru/rocketbank/r2d2/activities/sound/SoundActivity;)Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/r2d2/data/binding/sound/SoundBindingData;->getSubTextColor()Landroid/databinding/ObservableInt;

    move-result-object v2

    invoke-virtual {v2}, Landroid/databinding/ObservableInt;->get()I

    move-result v2

    .line 310
    invoke-virtual {p1, v0, v1, v2, p2}, Lru/rocketbank/r2d2/activities/sound/SoundActivity;->animateColor(Ljava/lang/Object;Ljava/lang/String;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
