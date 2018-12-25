.class final Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;
.super Ljava/lang/Object;
.source "AutofitHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grantland/widget/AutofitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AutofitOnLayoutChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lme/grantland/widget/AutofitHelper;


# direct methods
.method private constructor <init>(Lme/grantland/widget/AutofitHelper;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;->this$0:Lme/grantland/widget/AutofitHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/grantland/widget/AutofitHelper;B)V
    .locals 0

    .line 535
    invoke-direct {p0, p1}, Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;-><init>(Lme/grantland/widget/AutofitHelper;)V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 539
    iget-object p1, p0, Lme/grantland/widget/AutofitHelper$AutofitOnLayoutChangeListener;->this$0:Lme/grantland/widget/AutofitHelper;

    invoke-static {p1}, Lme/grantland/widget/AutofitHelper;->access$200(Lme/grantland/widget/AutofitHelper;)V

    return-void
.end method
