.class final Lcom/flurry/sdk/ix$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ix$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/ix$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ix$1;I)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/flurry/sdk/ix$1$1;->b:Lcom/flurry/sdk/ix$1;

    iput p2, p0, Lcom/flurry/sdk/ix$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 147
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 1097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SD HTTP Response Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/flurry/sdk/ix$1$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
