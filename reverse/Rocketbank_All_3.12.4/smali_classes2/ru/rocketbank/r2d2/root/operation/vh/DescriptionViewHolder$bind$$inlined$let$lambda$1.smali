.class final Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder$bind$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "DescriptionViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;->bind()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder$bind$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 14
    iget-object p1, p0, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder$bind$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->getOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder$bind$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/operation/vh/DescriptionViewHolder;->getItem()Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
