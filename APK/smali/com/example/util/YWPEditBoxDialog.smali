.class public Lcom/example/util/YWPEditBoxDialog;
.super Landroid/app/Dialog;


# static fields
.field private static a:Z

.field private static s:Landroid/os/Handler;


# instance fields
.field private final A:I

.field private final B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Z

.field private G:Landroid/text/TextWatcher;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private t:Lcom/example/util/af;

.field private final u:Ljava/lang/String;

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/example/util/YWPEditBoxDialog;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIIII)V
    .locals 1

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/sgf/MainActivity;->isShowStatusModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/example/util/YWPEditBoxDialog;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1030010

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->d:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->e:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->f:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->g:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->j:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->k:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->l:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->n:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->o:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->p:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->q:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->r:I

    new-instance v0, Lcom/example/util/u;

    invoke-direct {v0, p0}, Lcom/example/util/u;-><init>(Lcom/example/util/YWPEditBoxDialog;)V

    iput-object v0, p0, Lcom/example/util/YWPEditBoxDialog;->G:Landroid/text/TextWatcher;

    iput-object p3, p0, Lcom/example/util/YWPEditBoxDialog;->u:Ljava/lang/String;

    iput p4, p0, Lcom/example/util/YWPEditBoxDialog;->v:I

    iput p5, p0, Lcom/example/util/YWPEditBoxDialog;->w:I

    iput p6, p0, Lcom/example/util/YWPEditBoxDialog;->x:I

    iput p7, p0, Lcom/example/util/YWPEditBoxDialog;->y:I

    iput p8, p0, Lcom/example/util/YWPEditBoxDialog;->z:I

    iput p9, p0, Lcom/example/util/YWPEditBoxDialog;->A:I

    iput p10, p0, Lcom/example/util/YWPEditBoxDialog;->B:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/example/util/YWPEditBoxDialog;->C:I

    return-void

    :cond_0
    const v0, 0x1030011

    goto :goto_0
.end method

.method static synthetic a(Lcom/example/util/YWPEditBoxDialog;I)I
    .locals 0

    iput p1, p0, Lcom/example/util/YWPEditBoxDialog;->C:I

    return p1
.end method

.method static synthetic a(Lcom/example/util/YWPEditBoxDialog;)Lcom/example/util/af;
    .locals 1

    iget-object v0, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    return-object v0
.end method

.method static a()Z
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/sgf/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/example/util/YWPEditBoxDialog;)I
    .locals 1

    iget v0, p0, Lcom/example/util/YWPEditBoxDialog;->C:I

    return v0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/example/util/YWPEditBoxDialog;->a:Z

    return v0
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/example/util/YWPEditBoxDialog;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/example/util/YWPEditBoxDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/YWPEditBoxDialog;->d()V

    return-void
.end method

.method public static closeIMEKeyboard()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/example/util/YWPEditBoxDialog;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private d()V
    .locals 3

    invoke-virtual {p0}, Lcom/example/util/YWPEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method static synthetic d(Lcom/example/util/YWPEditBoxDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/util/YWPEditBoxDialog;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    invoke-virtual {p0}, Lcom/example/util/YWPEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    invoke-virtual {v1}, Lcom/example/util/af;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public static updatePosition(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/example/util/YWPEditBoxDialog;->s:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/example/util/YWPEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/example/util/af;

    invoke-virtual {p0}, Lcom/example/util/YWPEditBoxDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/example/util/af;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    iget-object v2, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    new-instance v3, Lcom/example/util/v;

    invoke-direct {v3, p0}, Lcom/example/util/v;-><init>(Lcom/example/util/YWPEditBoxDialog;)V

    invoke-virtual {v2, v3}, Lcom/example/util/af;->setOnKeyPreImeListener(Landroid/view/View$OnKeyListener;)V

    iget-object v2, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    iget-object v3, p0, Lcom/example/util/YWPEditBoxDialog;->G:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Lcom/example/util/af;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/example/util/YWPEditBoxDialog;->z:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/example/util/YWPEditBoxDialog;->A:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v3, p0, Lcom/example/util/YWPEditBoxDialog;->B:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/example/util/af;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    const/16 v4, 0xff

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/example/util/af;->setTextColor(I)V

    iget-object v3, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v6, v4}, Lcom/example/util/af;->setTextSize(IF)V

    iget-object v3, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v1}, Lcom/example/util/YWPEditBoxDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/example/util/w;

    invoke-direct {v1, p0}, Lcom/example/util/w;-><init>(Lcom/example/util/YWPEditBoxDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/example/util/YWPEditBoxDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    iget-object v1, p0, Lcom/example/util/YWPEditBoxDialog;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/example/util/af;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    invoke-virtual {v0}, Lcom/example/util/af;->getImeOptions()I

    move-result v0

    iget-object v1, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    const/high16 v2, 0x10000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/example/util/af;->setImeOptions(I)V

    iget-object v0, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    invoke-virtual {v0}, Lcom/example/util/af;->getImeOptions()I

    move-result v0

    iget v1, p0, Lcom/example/util/YWPEditBoxDialog;->v:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-boolean v1, p0, Lcom/example/util/YWPEditBoxDialog;->F:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/example/util/YWPEditBoxDialog;->E:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, p0, Lcom/example/util/YWPEditBoxDialog;->E:I

    :cond_0
    iget-object v1, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    iget v2, p0, Lcom/example/util/YWPEditBoxDialog;->E:I

    iget v3, p0, Lcom/example/util/YWPEditBoxDialog;->D:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/example/util/af;->setInputType(I)V

    iget v1, p0, Lcom/example/util/YWPEditBoxDialog;->w:I

    packed-switch v1, :pswitch_data_1

    :goto_1
    iget-object v1, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    iget v2, p0, Lcom/example/util/YWPEditBoxDialog;->D:I

    iget v3, p0, Lcom/example/util/YWPEditBoxDialog;->E:I

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/example/util/af;->setInputType(I)V

    iget v1, p0, Lcom/example/util/YWPEditBoxDialog;->x:I

    packed-switch v1, :pswitch_data_2

    iget-object v1, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/example/util/af;->setImeOptions(I)V

    :goto_2
    iget v0, p0, Lcom/example/util/YWPEditBoxDialog;->y:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/example/util/YWPEditBoxDialog;->y:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/example/util/af;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/example/util/x;

    invoke-direct {v1, p0}, Lcom/example/util/x;-><init>(Lcom/example/util/YWPEditBoxDialog;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    new-instance v1, Lcom/example/util/y;

    invoke-direct {v1, p0}, Lcom/example/util/y;-><init>(Lcom/example/util/YWPEditBoxDialog;)V

    invoke-virtual {v0, v1}, Lcom/example/util/af;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Lcom/example/util/z;

    invoke-direct {v0, p0}, Lcom/example/util/z;-><init>(Lcom/example/util/YWPEditBoxDialog;)V

    sput-object v0, Lcom/example/util/YWPEditBoxDialog;->s:Landroid/os/Handler;

    return-void

    :pswitch_0
    const v1, 0x20001

    iput v1, p0, Lcom/example/util/YWPEditBoxDialog;->E:I

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x21

    iput v1, p0, Lcom/example/util/YWPEditBoxDialog;->E:I

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x1002

    iput v1, p0, Lcom/example/util/YWPEditBoxDialog;->E:I

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x3

    iput v1, p0, Lcom/example/util/YWPEditBoxDialog;->E:I

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x11

    iput v1, p0, Lcom/example/util/YWPEditBoxDialog;->E:I

    goto :goto_0

    :pswitch_5
    const/16 v1, 0x3002

    iput v1, p0, Lcom/example/util/YWPEditBoxDialog;->E:I

    goto/16 :goto_0

    :pswitch_6
    iput v6, p0, Lcom/example/util/YWPEditBoxDialog;->E:I

    goto/16 :goto_0

    :pswitch_7
    const/16 v1, 0x81

    iput v1, p0, Lcom/example/util/YWPEditBoxDialog;->D:I

    goto :goto_1

    :pswitch_8
    const/high16 v1, 0x80000

    iput v1, p0, Lcom/example/util/YWPEditBoxDialog;->D:I

    goto :goto_1

    :pswitch_9
    const/16 v1, 0x2000

    iput v1, p0, Lcom/example/util/YWPEditBoxDialog;->D:I

    goto :goto_1

    :pswitch_a
    const/16 v1, 0x4000

    iput v1, p0, Lcom/example/util/YWPEditBoxDialog;->D:I

    goto/16 :goto_1

    :pswitch_b
    const/16 v1, 0x1000

    iput v1, p0, Lcom/example/util/YWPEditBoxDialog;->D:I

    goto/16 :goto_1

    :pswitch_c
    iget-object v1, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/example/util/af;->setImeOptions(I)V

    goto :goto_2

    :pswitch_d
    iget-object v1, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    or-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, v0}, Lcom/example/util/af;->setImeOptions(I)V

    goto/16 :goto_2

    :pswitch_e
    iget-object v1, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Lcom/example/util/af;->setImeOptions(I)V

    goto/16 :goto_2

    :pswitch_f
    iget-object v1, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    or-int/lit8 v0, v0, 0x3

    invoke-virtual {v1, v0}, Lcom/example/util/af;->setImeOptions(I)V

    goto/16 :goto_2

    :pswitch_10
    iget-object v1, p0, Lcom/example/util/YWPEditBoxDialog;->t:Lcom/example/util/af;

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lcom/example/util/af;->setImeOptions(I)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/example/sgf/MainActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
