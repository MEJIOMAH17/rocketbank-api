.class final Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "CardDetailFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/CardDetailFragment;->showSpayUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 305
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$showSpayUpdateDialog$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->access$getCardPresenter$p(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)Lru/rocketbank/r2d2/root/card/binding/CardPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/card/binding/CardPresenter;->updateSpay()V

    return-void
.end method
