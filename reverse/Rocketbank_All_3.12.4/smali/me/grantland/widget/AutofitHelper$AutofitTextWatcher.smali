.class final Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;
.super Ljava/lang/Object;
.source "AutofitHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grantland/widget/AutofitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutofitTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lme/grantland/widget/AutofitHelper;


# direct methods
.method private constructor <init>(Lme/grantland/widget/AutofitHelper;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;->this$0:Lme/grantland/widget/AutofitHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/grantland/widget/AutofitHelper;B)V
    .locals 0

    .line 518
    invoke-direct {p0, p1}, Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;-><init>(Lme/grantland/widget/AutofitHelper;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 526
    iget-object p1, p0, Lme/grantland/widget/AutofitHelper$AutofitTextWatcher;->this$0:Lme/grantland/widget/AutofitHelper;

    invoke-static {p1}, Lme/grantland/widget/AutofitHelper;->access$200(Lme/grantland/widget/AutofitHelper;)V

    return-void
.end method
