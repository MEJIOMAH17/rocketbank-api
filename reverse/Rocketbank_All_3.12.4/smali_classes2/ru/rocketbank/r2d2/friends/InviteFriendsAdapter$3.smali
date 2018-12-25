.class Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;
.super Ljava/lang/Object;
.source "InviteFriendsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

.field final synthetic val$contact:Lru/rocketbank/core/model/contact/Contact;

.field final synthetic val$holder:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;

.field final synthetic val$selectedColor:I


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Lru/rocketbank/core/model/contact/Contact;Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;I)V
    .locals 0

    .line 143
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    iput-object p3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$holder:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;

    iput p4, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$selectedColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 146
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$holder:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;

    iget-object v1, v1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->buttonInvite:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/model/contact/Contact;->updateContacts(Landroid/content/Context;)V

    .line 147
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x10e0001

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 149
    iget-object v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {v2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    .line 150
    invoke-static {v3}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, v0

    .line 151
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 152
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$holder:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;

    iget-object v2, v2, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->menu:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$002(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 155
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-static {v0, v2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$102(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Lru/rocketbank/core/model/contact/Contact;)Lru/rocketbank/core/model/contact/Contact;

    .line 156
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getEmails()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getEmails()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 157
    :goto_0
    iget-object v4, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {v4}, Lru/rocketbank/core/model/contact/Contact;->getPhones()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {v4}, Lru/rocketbank/core/model/contact/Contact;->getPhones()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 160
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$holder:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {v2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$100(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Lru/rocketbank/core/model/contact/Contact;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$200(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;Lru/rocketbank/core/model/contact/Contact;)V

    .line 161
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {p1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 162
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {v1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 163
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    invoke-static {v0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->access$000(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3$1;-><init>(Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;)V

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 175
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$holder:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;

    iget-object p1, p1, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$InviteViewHolder;->content:Landroid/view/ViewGroup;

    iget v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$selectedColor:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {v0, p1, v1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->onSendEmailClick(Landroid/view/View;Lru/rocketbank/core/model/contact/Contact;)V

    return-void

    :cond_4
    if-eqz v2, :cond_5

    .line 179
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->this$0:Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter$3;->val$contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {v0, p1, v1}, Lru/rocketbank/r2d2/friends/InviteFriendsAdapter;->onSendSmsClick(Landroid/view/View;Lru/rocketbank/core/model/contact/Contact;)V

    :cond_5
    return-void
.end method
