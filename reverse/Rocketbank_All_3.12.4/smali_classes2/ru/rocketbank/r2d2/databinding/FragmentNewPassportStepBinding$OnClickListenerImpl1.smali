.class public Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;
.super Ljava/lang/Object;
.source "FragmentNewPassportStepBinding.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickListenerImpl1"
.end annotation


# instance fields
.field private value:Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;->value:Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;->mainClicked(Landroid/view/View;)V

    return-void
.end method

.method public setValue(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;)Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;
    .locals 0

    .line 408
    iput-object p1, p0, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding$OnClickListenerImpl1;->value:Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object p0
.end method
