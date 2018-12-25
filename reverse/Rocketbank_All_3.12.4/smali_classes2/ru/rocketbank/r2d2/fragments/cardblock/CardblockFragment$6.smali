.class Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$6;
.super Ljava/lang/Object;
.source "CardblockFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->showProgressExecution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$6;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 423
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment$6;->this$0:Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;->access$902(Lru/rocketbank/r2d2/fragments/cardblock/CardblockFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
