.class public final Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$4;
.super Ljava/lang/Object;
.source "ChatFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/ChatFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRatingChanged(Landroid/widget/RatingBar;FZLru/rocketbank/core/network/model/Rating;)V
    .locals 1

    const-string v0, "ratingBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ratingSource"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 203
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatFragment$onCreateView$4;->this$0:Lru/rocketbank/r2d2/root/chat/ChatFragment;

    invoke-virtual {p4}, Lru/rocketbank/core/network/model/Rating;->getPermalink()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    float-to-int p2, p2

    invoke-virtual {p1, p3, p2}, Lru/rocketbank/r2d2/root/chat/ChatFragment;->sendRating(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
