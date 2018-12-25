.class public final Lru/rocketbank/r2d2/root/chat/ChatActionPopup;
.super Ljava/lang/Object;
.source "ChatActionPopup.kt"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;,
        Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;,
        Lru/rocketbank/r2d2/root/chat/ChatActionPopup$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatActionPopup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatActionPopup.kt\nru/rocketbank/r2d2/root/chat/ChatActionPopup\n*L\n1#1,113:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$Companion;

.field private static final HEIGHT_DP:I = 0xce


# instance fields
.field private final container:Landroid/view/ViewGroup;

.field private final context:Landroid/content/Context;

.field private dismissListenerChat:Landroid/widget/PopupWindow$OnDismissListener;

.field private final inflater:Landroid/view/LayoutInflater;

.field private isShowed:Z

.field private maybeActions:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;

.field private popup:Landroid/widget/PopupWindow;

.field private viewHolder:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->Companion:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->context:Landroid/content/Context;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->container:Landroid/view/ViewGroup;

    return-void
.end method

.method public static final synthetic access$getMaybeActions$p(Lru/rocketbank/r2d2/root/chat/ChatActionPopup;)Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;
    .locals 0

    .line 18
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->maybeActions:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;

    return-object p0
.end method

.method public static final synthetic access$getPopup$p(Lru/rocketbank/r2d2/root/chat/ChatActionPopup;)Landroid/widget/PopupWindow;
    .locals 0

    .line 18
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->popup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static final synthetic access$setMaybeActions$p(Lru/rocketbank/r2d2/root/chat/ChatActionPopup;Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->maybeActions:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;

    return-void
.end method

.method public static final synthetic access$setPopup$p(Lru/rocketbank/r2d2/root/chat/ChatActionPopup;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->popup:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->isShowed:Z

    return-void
.end method

.method public final getDismissListenerChat()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->dismissListenerChat:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method public final getHeight()I
    .locals 2

    .line 107
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->context:Landroid/content/Context;

    sget v1, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->HEIGHT_DP:I

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public final isShowed()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->isShowed:Z

    return v0
.end method

.method public final onDismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->viewHolder:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;

    .line 29
    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->popup:Landroid/widget/PopupWindow;

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->dismissListenerChat:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    return-void

    :cond_0
    return-void
.end method

.method public final setActions(Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;)V
    .locals 1

    const-string v0, "popupActions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->maybeActions:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$PopupActions;

    return-void
.end method

.method public final setDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    const-string v0, "dismissListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->dismissListenerChat:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final setDismissListenerChat(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->dismissListenerChat:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public final showPopup(ILandroid/graphics/Point;)V
    .locals 5

    const-string v0, "showPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->container:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const v3, 0x7f0c0083

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->context:Landroid/content/Context;

    sget v3, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->HEIGHT_DP:I

    invoke-static {v1, v3}, Lru/rocketbank/r2d2/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    .line 59
    new-instance v3, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;

    const-string v4, "view"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v0}, Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;-><init>(Lru/rocketbank/r2d2/root/chat/ChatActionPopup;Landroid/view/View;)V

    iput-object v3, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->viewHolder:Lru/rocketbank/r2d2/root/chat/ChatActionPopup$ViewHolder;

    .line 60
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 62
    invoke-virtual {v3, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 63
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {v3, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 65
    invoke-virtual {v3, p1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 66
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    invoke-virtual {v3, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 68
    move-object v0, p0

    check-cast v0, Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->container:Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v0, v2, v1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 60
    iput-object v3, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->popup:Landroid/widget/PopupWindow;

    .line 71
    iput-boolean p1, p0, Lru/rocketbank/r2d2/root/chat/ChatActionPopup;->isShowed:Z

    return-void
.end method
