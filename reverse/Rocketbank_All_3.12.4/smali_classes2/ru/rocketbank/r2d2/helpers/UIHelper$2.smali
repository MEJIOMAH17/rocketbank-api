.class final Lru/rocketbank/r2d2/helpers/UIHelper$2;
.super Ljava/lang/Object;
.source "UIHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/helpers/UIHelper;->showPrivacyDialog(Landroid/content/Context;Ljava/lang/String;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onCancel:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/functions/Action0;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$2;->val$onCancel:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 117
    iget-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$2;->val$onCancel:Lrx/functions/Action0;

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lru/rocketbank/r2d2/helpers/UIHelper$2;->val$onCancel:Lrx/functions/Action0;

    invoke-interface {p1}, Lrx/functions/Action0;->call()V

    :cond_0
    return-void
.end method
