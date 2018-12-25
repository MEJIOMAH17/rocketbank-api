.class final Lru/rocketbank/core/widgets/RocketTextInputLayout$TextInputAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "RocketTextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/RocketTextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextInputAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;


# direct methods
.method private constructor <init>(Lru/rocketbank/core/widgets/RocketTextInputLayout;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$TextInputAccessibilityDelegate;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lru/rocketbank/core/widgets/RocketTextInputLayout;B)V
    .locals 0

    .line 771
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout$TextInputAccessibilityDelegate;-><init>(Lru/rocketbank/core/widgets/RocketTextInputLayout;)V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 774
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 775
    const-class p1, Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 790
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 791
    const-class p1, Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 793
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$TextInputAccessibilityDelegate;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->access$400(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Lru/rocketbank/core/widgets/CollapsingTextHelper;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 794
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    .line 798
    :cond_0
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$TextInputAccessibilityDelegate;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->access$600(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 799
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$TextInputAccessibilityDelegate;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->access$600(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setLabelFor(Landroid/view/View;)V

    .line 802
    :cond_1
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$TextInputAccessibilityDelegate;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->access$700(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$TextInputAccessibilityDelegate;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->access$800(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Lru/rocketbank/core/widgets/RocketTextView;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 803
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 804
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentInvalid(Z)V

    .line 805
    invoke-virtual {p2, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setError(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 780
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 782
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$TextInputAccessibilityDelegate;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->access$400(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Lru/rocketbank/core/widgets/CollapsingTextHelper;

    move-result-object p1

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 783
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
