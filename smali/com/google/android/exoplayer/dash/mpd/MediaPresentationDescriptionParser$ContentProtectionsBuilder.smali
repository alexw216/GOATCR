.class public final Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;
.super Ljava/lang/Object;
.source "MediaPresentationDescriptionParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ContentProtectionsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
        ">;"
    }
.end annotation


# instance fields
.field private adaptationSetProtections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation
.end field

.field private currentRepresentationProtections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation
.end field

.field private representationProtections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation
.end field

.field private representationProtectionsSet:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private maybeAddContentProtection(Ljava/util/List;Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V
    .locals 3
    .param p2, "contentProtection"    # Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 819
    .local p1, "contentProtections":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/dash/mpd/ContentProtection;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 820
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 823
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    iget-object v1, v1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 820
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 823
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 826
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addAdaptationSetProtection(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V
    .locals 1
    .param p1, "contentProtection"    # Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->maybeAddContentProtection(Ljava/util/List;Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V

    .line 749
    return-void
.end method

.method public addRepresentationProtection(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V
    .locals 1
    .param p1, "contentProtection"    # Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->maybeAddContentProtection(Ljava/util/List;Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V

    .line 761
    return-void
.end method

.method public build()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/exoplayer/dash/mpd/ContentProtection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 791
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    .line 799
    :goto_0
    return-object v1

    .line 792
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 793
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    goto :goto_0

    .line 796
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 797
    iget-object v2, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    invoke-direct {p0, v2, v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->maybeAddContentProtection(Ljava/util/List;Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)V

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 799
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->adaptationSetProtections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public compare(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)I
    .locals 2
    .param p1, "first"    # Lcom/google/android/exoplayer/dash/mpd/ContentProtection;
    .param p2, "second"    # Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    .prologue
    .line 834
    iget-object v0, p1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;->schemeUriId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 731
    check-cast p1, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    check-cast p2, Lcom/google/android/exoplayer/dash/mpd/ContentProtection;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->compare(Lcom/google/android/exoplayer/dash/mpd/ContentProtection;Lcom/google/android/exoplayer/dash/mpd/ContentProtection;)I

    move-result v0

    return v0
.end method

.method public endRepresentation()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 768
    iget-boolean v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtectionsSet:Z

    if-nez v1, :cond_1

    .line 769
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 772
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    .line 773
    iput-boolean v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtectionsSet:Z

    .line 783
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    .line 784
    return-void

    .line 776
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 777
    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 779
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 780
    iget-object v0, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->currentRepresentationProtections:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser$ContentProtectionsBuilder;->representationProtections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    goto :goto_0
.end method
