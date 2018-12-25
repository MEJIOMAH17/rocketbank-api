.class final Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$2;
.super Ljava/lang/Object;
.source "IncomingRating.kt"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/support/v4/app/FragmentManager;Lru/rocketbank/r2d2/root/chat/MessageManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIncomingRating.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncomingRating.kt\nru/rocketbank/r2d2/root/chat/incoming/IncomingRating$2\n*L\n1#1,60:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$2;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 2

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$2;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->access$getOnRatingChangeListener$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;)Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$2;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->access$getRating$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;)Lru/rocketbank/core/network/model/Rating;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v1, p2}, Lru/rocketbank/core/network/model/Rating;->setRate(F)V

    const-string v1, "ratingBar"

    .line 39
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating$2;->this$0:Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;->access$getRating$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingRating;)Lru/rocketbank/core/network/model/Rating;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-interface {v0, p1, p2, p3, v1}, Lru/rocketbank/r2d2/root/chat/OnRatingChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZLru/rocketbank/core/network/model/Rating;)V

    return-void

    :cond_2
    return-void
.end method
