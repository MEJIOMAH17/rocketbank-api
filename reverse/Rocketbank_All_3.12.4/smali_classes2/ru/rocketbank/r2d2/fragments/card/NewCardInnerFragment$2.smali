.class Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$2;
.super Ljava/lang/Object;
.source "NewCardInnerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->showProgressExecution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;->access$302(Lru/rocketbank/r2d2/fragments/card/NewCardInnerFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
