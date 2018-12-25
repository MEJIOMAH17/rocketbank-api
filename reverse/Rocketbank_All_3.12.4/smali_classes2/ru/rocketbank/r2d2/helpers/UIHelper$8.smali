.class final Lru/rocketbank/r2d2/helpers/UIHelper$8;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/helpers/UIHelper;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onNegative:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$8;->val$onNegative:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 408
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 409
    iget-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$8;->val$onNegative:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 410
    iget-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$8;->val$onNegative:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
