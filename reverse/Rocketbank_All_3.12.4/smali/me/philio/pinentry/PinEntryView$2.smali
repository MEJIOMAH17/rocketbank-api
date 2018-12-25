.class final Lme/philio/pinentry/PinEntryView$2;
.super Ljava/lang/Object;
.source "PinEntryView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/philio/pinentry/PinEntryView;->addViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/philio/pinentry/PinEntryView;


# direct methods
.method constructor <init>(Lme/philio/pinentry/PinEntryView;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .line 350
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 351
    :goto_0
    iget-object v3, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    invoke-static {v3}, Lme/philio/pinentry/PinEntryView;->access$100(Lme/philio/pinentry/PinEntryView;)I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 352
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 353
    iget-object v3, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    invoke-static {v3}, Lme/philio/pinentry/PinEntryView;->access$400(Lme/philio/pinentry/PinEntryView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    invoke-static {v3}, Lme/philio/pinentry/PinEntryView;->access$400(Lme/philio/pinentry/PinEntryView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 354
    :cond_0
    iget-object v3, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    invoke-static {v3}, Lme/philio/pinentry/PinEntryView;->access$400(Lme/philio/pinentry/PinEntryView;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    :goto_1
    invoke-interface {p1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 355
    :goto_2
    iget-object v4, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    invoke-virtual {v4, v2}, Lme/philio/pinentry/PinEntryView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 357
    :cond_2
    iget-object v3, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    invoke-virtual {v3, v2}, Lme/philio/pinentry/PinEntryView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :goto_3
    iget-object v3, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    invoke-static {v3}, Lme/philio/pinentry/PinEntryView;->access$000(Lme/philio/pinentry/PinEntryView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 360
    iget-object v3, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    invoke-virtual {v3, v2}, Lme/philio/pinentry/PinEntryView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    invoke-static {v4}, Lme/philio/pinentry/PinEntryView;->access$200(Lme/philio/pinentry/PinEntryView;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    .line 361
    invoke-static {v4}, Lme/philio/pinentry/PinEntryView;->access$200(Lme/philio/pinentry/PinEntryView;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    if-eq v2, v0, :cond_4

    iget-object v4, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    .line 362
    invoke-static {v4}, Lme/philio/pinentry/PinEntryView;->access$100(Lme/philio/pinentry/PinEntryView;)I

    move-result v4

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_3

    iget-object v4, p0, Lme/philio/pinentry/PinEntryView$2;->this$0:Lme/philio/pinentry/PinEntryView;

    invoke-static {v4}, Lme/philio/pinentry/PinEntryView;->access$100(Lme/philio/pinentry/PinEntryView;)I

    move-result v4

    if-ne v0, v4, :cond_3

    goto :goto_4

    :cond_3
    move v5, v1

    .line 360
    :cond_4
    :goto_4
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
