.class public final Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;
.super Ljava/lang/Object;
.source "SectionedRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# instance fields
.field firstPosition:I

.field sectionedPosition:I

.field title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->firstPosition:I

    .line 105
    iput-object p2, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->title:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final getFirstPosition()I
    .locals 1

    .line 109
    iget v0, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->firstPosition:I

    return v0
.end method
