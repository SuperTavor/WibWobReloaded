.class public Lcom/example/util/YWPEditBoxHandler;
.super Landroid/os/Handler;


# static fields
.field public static final HANDLER_SHOW_EDITBOX_DIALOG:I = 0x1

.field private static a:Z

.field private static b:Lcom/example/sgf/MainActivity;

.field private static c:Lcom/example/util/YWPEditBoxHandler;


# instance fields
.field private d:Lcom/example/util/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/example/util/YWPEditBoxHandler;->a:Z

    sput-object v1, Lcom/example/util/YWPEditBoxHandler;->b:Lcom/example/sgf/MainActivity;

    sput-object v1, Lcom/example/util/YWPEditBoxHandler;->c:Lcom/example/util/YWPEditBoxHandler;

    return-void
.end method

.method public constructor <init>(Lcom/example/sgf/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sput-object p1, Lcom/example/util/YWPEditBoxHandler;->b:Lcom/example/sgf/MainActivity;

    sput-object p0, Lcom/example/util/YWPEditBoxHandler;->c:Lcom/example/util/YWPEditBoxHandler;

    new-instance v0, Lcom/example/util/ab;

    invoke-direct {v0, p0}, Lcom/example/util/ab;-><init>(Lcom/example/util/YWPEditBoxHandler;)V

    iput-object v0, p0, Lcom/example/util/YWPEditBoxHandler;->d:Lcom/example/util/ae;

    iget-object v0, p0, Lcom/example/util/YWPEditBoxHandler;->d:Lcom/example/util/ae;

    invoke-virtual {p0, v0}, Lcom/example/util/YWPEditBoxHandler;->setKeyboardListener(Lcom/example/util/ae;)V

    return-void
.end method

.method static synthetic a()Lcom/example/sgf/MainActivity;
    .locals 1

    sget-object v0, Lcom/example/util/YWPEditBoxHandler;->b:Lcom/example/sgf/MainActivity;

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/example/util/YWPEditBoxHandler;->nativeSetKeyboardHeight(I)V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 11

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/example/util/ad;

    new-instance v0, Lcom/example/util/YWPEditBoxDialog;

    sget-object v1, Lcom/example/util/YWPEditBoxHandler;->b:Lcom/example/sgf/MainActivity;

    iget-object v2, v10, Lcom/example/util/ad;->a:Ljava/lang/String;

    iget-object v3, v10, Lcom/example/util/ad;->b:Ljava/lang/String;

    iget v4, v10, Lcom/example/util/ad;->c:I

    iget v5, v10, Lcom/example/util/ad;->d:I

    iget v6, v10, Lcom/example/util/ad;->e:I

    iget v7, v10, Lcom/example/util/ad;->f:I

    iget v8, v10, Lcom/example/util/ad;->g:I

    iget v9, v10, Lcom/example/util/ad;->h:I

    iget v10, v10, Lcom/example/util/ad;->i:I

    invoke-direct/range {v0 .. v10}, Lcom/example/util/YWPEditBoxDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIIII)V

    invoke-virtual {v0}, Lcom/example/util/YWPEditBoxDialog;->show()V

    return-void
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/example/util/YWPEditBoxHandler;->a:Z

    return v0
.end method

.method public static copyToClipboard(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/example/util/YWPEditBoxHandler;->b:Lcom/example/sgf/MainActivity;

    new-instance v1, Lcom/example/util/aa;

    invoke-direct {v1, p0}, Lcom/example/util/aa;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native nativeSetEditTextChanged([B)V
.end method

.method private static native nativeSetEditTextDialogResult([B)V
.end method

.method private static native nativeSetKeyboardHeight(I)V
.end method

.method public static setEditTextChanged(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPEditBoxHandler;->nativeSetEditTextChanged([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setEditTextDialogResult(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/example/util/YWPEditBoxHandler;->nativeSetEditTextDialogResult([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static showEditTextDialog(Ljava/lang/String;[BIIIIIII)V
    .locals 10

    sget-object v0, Lcom/example/util/YWPEditBoxHandler;->c:Lcom/example/util/YWPEditBoxHandler;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/example/util/YWPEditBoxHandler;->showEditTextDialogImpl(Ljava/lang/String;[BIIIIIII)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/example/util/YWPEditBoxHandler;->a(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final setKeyboardListener(Lcom/example/util/ae;)V
    .locals 3

    sget-object v0, Lcom/example/util/YWPEditBoxHandler;->b:Lcom/example/sgf/MainActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/example/sgf/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/example/util/ac;

    invoke-direct {v2, p0, v0, p1}, Lcom/example/util/ac;-><init>(Lcom/example/util/YWPEditBoxHandler;Landroid/view/View;Lcom/example/util/ae;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public showEditTextDialogImpl(Ljava/lang/String;[BIIIIIII)V
    .locals 11

    const-string v0, ""

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v2, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v10, Landroid/os/Message;

    invoke-direct {v10}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    iput v0, v10, Landroid/os/Message;->what:I

    new-instance v0, Lcom/example/util/ad;

    move-object v1, p1

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/example/util/ad;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIII)V

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v10}, Lcom/example/util/YWPEditBoxHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v1

    move-object v2, v0

    goto :goto_0
.end method
